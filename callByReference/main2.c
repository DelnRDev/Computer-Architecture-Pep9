#include <stdio.h>

int a;
int b;

void addToFirst(int* x, int* y){

    *x = *x + *y;

}

int main(){

    a = 10;
    b = 3;

    addToFirst(&a, &b);

    printf("a: %d, b: %d\n", a ,b);


    return 0;
}
