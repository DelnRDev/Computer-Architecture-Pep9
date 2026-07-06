#include <stdio.h>

int a = 10;

void addOne(int *x){

    *x = *x + 1;

}

int main(){

    addOne(&a);

    printf("%d\n", a);

    return 0;

}
