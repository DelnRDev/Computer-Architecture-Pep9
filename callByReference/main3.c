#include <stdio.h>

int a;
int b;

void swap(int* r, int* s){
    printf("swapping\n");
    int temp = *r;

    *r = *s;
    *s = temp;
}

void order(int *x, int *y){

    if(*x > *y){
        swap(x, y);
    }

}

int main(){

    printf("Enter an integer: ");
    scanf("%d", &a);
    printf("Enter an integer: ");
    scanf("%d", &b);

    order(&a, &b);

    printf("ordered: %d, %d\n", a, b);

    return 0;
}
