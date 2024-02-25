#ifndef UTILS_H_
#define UTILS_H_

typedef struct {
    float x;
    float y;
} Point;

float random_float(float range);
void point_rotate(Point *p, Point center, float theta);
Point project(Point A, Point B);
float dot_product(Point A, Point B);
float max_in2(float a, float b);
float min_in2(float a, float b);
float max_in4(float a, float b, float c, float d);
float min_in4(float a, float b, float c, float d);

#endif
