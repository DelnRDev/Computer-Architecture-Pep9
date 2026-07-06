#include <stdio.h>

int function(int a, int b){

  int c;
  int d;
  
  c = a + 20;
  d = b - 10;
  
  return c + d;
  
}

int main(){
  
  int result;
  
  result = function(9, 2);
  
  printf("%d\n", result);

  return 0;
}
