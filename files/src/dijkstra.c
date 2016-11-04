#include <stdlib.h>
#include "control.h"
#include "formula.h"

static struct list *create_queue(int x, int y)
{
  struct list *out = malloc(sizeof (struct list));
  if (!out)
    return NULL;
  out->key.x = x;
  out->key.y = y;
  out->next = out;
  return out;
}

static struct list *add_queue(int x, int y, struct list *list)
{
  struct list *out = create_queue(x, y);
  if (!list)
    return out;
  out->next = list->next;
  list->next = out;
  return out;
}

static struct vec2 peek_queue(struct list *list)
{
  struct vec2 out=
  {
    0, 0
  };
  if (!list)
    return out;
  struct list *outp = list->next;
  out.x = outp->key.x;
  out.y = outp->key.y;
  return out;
}

static struct list *pop_queue(struct list *list)
{
  if (!list)
    return NULL;
  if (list->next == list)
  {
    free(list);
    return NULL;
  }
  struct list *to_free = list->next;
  list->next = to_free->next;
  return list;
}

static int tile_value(struct map *map, int x, int y)
{
  enum floortype type = map_get_floor(map, y, x);
  if (BLOCK == type)
    return -1;
  if (GRASS == type)
    return 10;
  if (FINISH == type)
    return 0;
  return 1;
}

struct list *check_surr(unsigned **value_map, struct vec2 curr,
                        struct list *queue, struct map *map)
{
  unsigned value = value_map[curr.x][curr.y];
  if (curr.x > 1 && tile_value(map, curr.x - 1, curr.y) != -1)
    if (tile_value(map, curr.x - 1, curr.y) + value
        < value_map[curr.x - 1][curr.y])
    {
      value_map[curr.x - 1][curr.y] = tile_value(map, curr.x - 1, curr.y)
                                      + value;
      queue = add_queue(curr.x - 1, curr.y, queue);
    }
  if (curr.y > 1 && tile_value(map, curr.x, curr.y - 1) != -1)
    if (tile_value(map, curr.x, curr.y - 1) + value
        < value_map[curr.x][curr.y - 1])
    {
      value_map[curr.x][curr.y - 1] = tile_value(map, curr.x, curr.y - 1)
                                      + value;
      queue = add_queue(curr.x, curr.y - 1, queue);
    }
  if (curr.x < map->height - 1 && tile_value(map, curr.x + 1, curr.y) != -1)
    if (tile_value(map, curr.x + 1, curr.y) + value
        < value_map[curr.x + 1][curr.y])
    {
      value_map[curr.x + 1][curr.y] = tile_value(map, curr.x + 1, curr.y)
                                      + value;
      queue = add_queue(curr.x + 1, curr.y, queue);
    }
  if (curr.y < map->width - 1 && tile_value(map, curr.x, curr.y + 1) != -1)
    if (tile_value(map, curr.x, curr.y + 1) + value
        < value_map[curr.x][curr.y + 1])
    {
      value_map[curr.x][curr.y + 1] = tile_value(map, curr.x, curr.y + 1)
                                      + value;
      queue = add_queue(curr.x, curr.y + 1, queue);
    }
  return queue;
}

struct list *create_path(unsigned **value_map, struct vec2 end,
                         struct map *map)
{
  struct list *out = add_queue(end.x, end.y, NULL);
  while (value_map[end.x][end.y])
  {
    unsigned value = value_map[end.x][end.y];
    if (value_map[end.x - 1][end.y] < value)
      end.x--;
    else if (value_map[end.x + 1][end.y] < value)
      end.x++;
    else if (value_map[end.x][end.y - 1] < value)
      end.y--;
    else
      end.y++;
    out = add_queue(end.y, end.x, NULL);
  }
  for (int i = 0; i < map->height; i++)
    free(value_map[i]);
  free(value_map);
  return out;
}

unsigned **path(struct map *map, struct vec2 end)
{
  unsigned **value_map = malloc(sizeof (unsigned *) * map->height);
  for (int i = 0; i < map->height; i++)
    value_map[i] = malloc(sizeof (unsigned) * map->width);
  for (int i = 0; i < map->height; i++)
    for (int j = 0; j < map->width; j++)
      value_map[i][j] = -1;
  struct vec2 start =
  {
    map->start.x, map->start.y
  };
  struct list *queue = add_queue(end.x, end.y, NULL);
  value_map[end.x][end.y] = 0;
  while (queue)
  {
    struct vec2 curr = peek_queue(queue);
    if (start.y == curr.x && start.x == curr.y)
      return value_map;
    queue = pop_queue(queue);
    queue = check_surr(value_map, curr, queue, map);
  }
  return NULL;
}
