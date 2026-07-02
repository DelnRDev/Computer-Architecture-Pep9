#include <stdio.h>

int cop;
int driver;

int main(){

    cop = 0;
    driver = 40;

    do{

        cop += 25;
        driver += 20;

    }while(cop < driver);

    printf("%d\n", cop);

    return 0;
}