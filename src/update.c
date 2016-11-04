#include <math.h>
#include <stdlib.h>
#include "formula.h"

struct global global =
{
  NULL, NULL, NULL, { 0x0 }
};

struct vector2 bugfix(struct vector2 fix)
{
  float tmp = fix.x;
  fix.x = fix.y;
  fix.y = tmp;
  return fix;
}

unsigned get_path_value(struct vector2 vec, int boo)
{
  int x;
  int y;
  if (boo)
  {
    x = vec.y;
    y = vec.x;
  }
  else
  {
    x = vec.x;
    y = vec.y;
  }
  return global.path[x][y];
}

int fill_moves(struct car *car, int index, unsigned *dist, enum move buff[10])
{
  enum move tab[8] =
  {
    ACCELERATE, ACCELERATE | TURN_LEFT, ACCELERATE | TURN_RIGHT, TURN_RIGHT, TURN_LEFT,
    BRAKE, BRAKE | TURN_RIGHT, BRAKE | TURN_LEFT
  };
  for (int i = 0; i < 6; i++)
  {
    struct car *clone = car_clone(car);
    enum status status = car_move(clone, tab[i]);
    int x = clone->position.x;
    int y = clone->position.y;
    float xvalid = clone->position.x - x;
    float yvalid = clone->position.y - y;
    if (status == CRASH)
    {
      car_delete(clone);
      continue;
    }
    if (index == 6 && get_path_value(clone->position, 1) < *dist
        && (xvalid > 0.25 && xvalid < 0.75)
        && (yvalid > 0.25 && xvalid < 0.75))
    {
      *dist = get_path_value(clone->position, 1);
      for (int k = 0; k < 7; k++)
        global.moves[k] = buff[k];
    }
    if (index < 6)
    {
      buff[index] = tab[i];
      fill_moves(clone, index + 1, dist, buff);
    }
    car_delete(clone);
  }
  return 1;
}

int launch_clones(struct car *car)
{
  int i = 0;
  enum move tmp_moves[10];
  unsigned best_distance = 10000;
  fill_moves(car, i, &best_distance, tmp_moves);
  return 1;
}

enum move follow_path(unsigned **path, struct car *car)
{
  struct vector2 zero;
  zero.x = 0;
  zero.y = 0;
  path = path;
  struct vec2 in_pos =
  {
    round(car->position.y), round(car->position.x)
  };
  in_pos = in_pos;
  struct vec2 next = next_pos(path, in_pos);
  struct vector2 direction; 
  next = next_pos(path, next_pos(path, next));
  direction.x = next.x - in_pos.x + 0.5;
  direction.y = next.y - in_pos.y + 0.5;
  float scal = scalar_prod(normalise(direction),
                           normalise(bugfix(car->direction)));
  if (scal < 1 - 0.005)
  {
    struct car *clone = car_clone(car);
    car_move(clone, TURN_RIGHT);
    float new = scalar_prod(normalise(direction),
                            normalise(bugfix(clone->direction)));
    car_delete(clone);
    int dist = path[in_pos.x][in_pos.y];
    int boo = ((dist < 6 && distance(zero, car->speed) > CAR_MAX_SPEED / 4)
               || scal < -0.5);
    if (new < scal)
      return TURN_LEFT | ((boo) ? BRAKE : DO_NOTHING);
    else
      return TURN_RIGHT | ((boo) ? BRAKE : DO_NOTHING);
  }
  launch_clones(car);
  enum move out = global.moves[0];
  for (int i = 1; i < 9; i++)
    global.moves[i - 1] = global.moves[i];
  global.moves[6] = DO_NOTHING;
  if (distance(zero, car->speed) > CAR_MAX_SPEED / 1.5)
    return DO_NOTHING;
  return out;
}

enum move update(struct car *car)
{
  if (!global.map)
  {
    global.map = car->map;
    struct vec2 end = find_end(global.map);
    global.path = path(global.map, end);
  }
  enum move out = follow_path(global.path, car);
  if (!out)
    global.moves[8]++;
  if ((out == TURN_LEFT && global.moves[9] == TURN_RIGHT)
      || (out == TURN_RIGHT && global.moves[9] == TURN_LEFT))
    global.moves[7]++;
  else
    global.moves[7] = 0;
  if (global.moves[8] > 5 || global.moves[7] > 5)
  {
    global.moves[8] = 0;
    out = ACCELERATE;
  }
  global.moves[9] = out;
  return out;
}
