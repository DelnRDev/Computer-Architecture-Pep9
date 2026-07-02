#include <stdio.h>

char letter;

int main(){

    scanf("%c", &letter);

    while(letter != '*'){

        if(letter == ' '){
            printf("%c", '\n');
        }else{
            printf("%c", letter);
        }

        scanf("%c", &letter);

    }

    return 0;
}