#include <stdio.h>

void dbPrint(int n){
    int result;

    result = n + n;

    printf("%d\n", result);
}

int main(){
    
    dbPrint(5);

    return 0;
}