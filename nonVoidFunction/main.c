#include <stdio.h>

int doubleNum(int n){
  return n + n;
}

int main(){
  
  int input;
  
  scanf("%d",&input);
  
  printf("%d\n", doubleNum(input));

  return 0;
}
