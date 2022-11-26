#include <stdio.h>

extern double countRoot(double x);

int main() {
    double x = 2;
    do {
        printf("Input your number(-1 < x < 1):\n");
        scanf("%lf", &x);
    } while (x >= 1 || x <= -1);
    double res = countRoot(x);
    printf("Result: %.30f", res);
    return 0;
}