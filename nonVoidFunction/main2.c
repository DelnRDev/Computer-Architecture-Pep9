#include <stdio.h>

int sum(int x, int y, int z){
  return x + y + z;
}

int main(){
  
  int in1 = 10;
  int in2 = 20;
  int in3 = 30;
  

  
  printf("result: %d\n", sum(in1, in2, in3));
  
  return 0;
}
