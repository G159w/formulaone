#include <math.h>
#include <stdlib.h>
#include "formula.h"

float scalar_prod(struct vector2 v1, struct vector2 v2)
{
  return v1.x * v2.x + v1.y * v2.y;
}

float distance(struct vector2 v1, struct vector2 v2)
{
  return sqrtf((v1.x - v2.x) * (v1.x - v2.x) +
               (v1.y - v2.y) * (v1.y - v2.y));
}

struct vector2 diff_vec(struct vector2 v1, struct vector2 v2)
{
  struct vector2 out =
  {
    v1.x - v2.x, v1.y - v2.y
  };
  return out;
}

struct vector2 normalise(struct vector2 vec)
{
  struct vector2 zero;
  zero.x = 0;
  zero.y = 0;
  float norm = distance(vec, zero);
  vec.x /= norm;
  vec.y /= norm;
  return vec;
}
