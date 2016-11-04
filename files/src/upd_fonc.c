#include <math.h>
#include <stdlib.h>
#include "formula.h"

static int iswalled(unsigned **path, struct vec2 pos)
{
  unsigned max = -1;
  if (path[pos.x + 1][pos.y] == max)
    return 1;
  if (path[pos.x - 1][pos.y] == max)
    return 1;
  if (path[pos.x][pos.y + 1] == max)
    return 1;
  if (path[pos.x][pos.y - 1] == max)
    return 1;
  return 0;
}
static struct vec2 nextpos2(unsigned **path, struct vec2 pos, 
                      struct vec2 output, unsigned value)
{
  if (!iswalled(path,pos))
  {
    if (path[pos.x - 1][pos.y - 1] < value)
    {
      value = path[pos.x - 1][pos.y - 1];
     output.x = pos.x - 1;
      output.y = pos.y - 1;
    }
    if (path[pos.x + 1][pos.y - 1] < value)
    {
     value = path[pos.x + 1][pos.y - 1];
     output.x = pos.x + 1;
      output.y = pos.y - 1;
    }
    if (path[pos.x - 1][pos.y + 1] < value)
    {
     value = path[pos.x - 1][pos.y + 1];
     output.x = pos.x - 1;
     output.y = pos.y + 1;
    }
    if (path[pos.x + 1][pos.y + 1] < value)
    {
     value = path[pos.x + 1][pos.y + 1];
     output.x = pos.x + 1;
     output.y = pos.y + 1;
    }
  }
  return output;
}
struct vec2 next_pos(unsigned **path, struct vec2 pos)
{
  unsigned value = path[pos.x][pos.y];
  struct vec2 output;
  output.x = pos.x;
  output.y = pos.y;
  if (path[pos.x + 1][pos.y] < value)
  {
    value = path[pos.x + 1][pos.y];
    output.x = pos.x + 1;
    output.y = pos.y;
  }
  if (path[pos.x - 1][pos.y] < value)
  {
    value = path[pos.x - 1][pos.y];
    output.x = pos.x - 1;
    output.y = pos.y;
  }
  if (path[pos.x][pos.y + 1] < value)
  {
    value = path[pos.x][pos.y + 1];
    output.x = pos.x;
    output.y = pos.y + 1;
  }
  if (path[pos.x][pos.y - 1] < value)
  {
    value = path[pos.x][pos.y - 1];
    output.x = pos.x;
    output.y = pos.y - 1;
  }
  return nextpos2(path, pos, output, value);
}

struct vec2 find_end(struct map *map)
{
  int maxx = map->height;
  int maxy = map->width;
  struct vec2 out =
  {
    0, 0
  };
  for (int i = 0; i < maxx; i++)
    for (int j = 0; j < maxy; j++)
      if (FINISH == map_get_floor(map, j, i))
      {
        out.x = i;
        out.y = j;
        return out;
      }
  return out;
}

void *cast(void *p)
{
  return p;
}
