#include <stdio.h>

void addOne(int *p){
    *p = *p + 1;
}

int  main(){
    int x;

    scanf("%d", &x);
    addOne(&x);
    printf("%d\n", x);

    return 0;
}
