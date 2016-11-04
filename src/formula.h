#include <stdlib.h>
#include "control.h"

struct global
{
  struct car *car;
  unsigned **path;
  struct map *map;
  enum move moves[10];
};

struct vec2
{
  int x;
  int y;
};

struct list
{
  struct vec2 key;
  struct list *next;
};




struct list *check_surr(unsigned **value_map, struct vec2 curr,
                        struct list *queue, struct map *map);

struct list *create_path(unsigned **value_map, struct vec2 end,
                         struct map *map);

unsigned **path(struct map *map, struct vec2 end);

struct vec2 next_pos(unsigned **path, struct vec2 pos);

struct vec2 find_end(struct map *map);

void *cast(void *p);
float scalar_prod(struct vector2 v1, struct vector2 v2);
float distance(struct vector2 v1, struct vector2 v2);
struct vector2 diff_vec(struct vector2 v1, struct vector2 v2);
struct vector2 normalise(struct vector2 vec);
