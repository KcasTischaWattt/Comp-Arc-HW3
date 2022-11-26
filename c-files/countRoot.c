double pow(double x, double y) {
    double temp = x;
    for (int i = 1; i < y; ++i) {
        x *= temp;
    }
    return x;
}

double countRoot(double x) {
    double res = 1 + 0.5 * x;
    double alpha = 0.5;
    long long factorial = 1;
    for (int i = 2; i < 15; ++i) {
        alpha *= 0.5 - i + 1;
        factorial *= i;
        res += alpha * pow(x, i)/factorial;
    }
    return res;
}

