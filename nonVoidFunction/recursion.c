#include <stdio.h>

void countDown(int n){
  if (n == 0){
    printf("done\n");
  }else{
    printf("%d\n", n);
    countDown(n - 1);
  }
}


int main(){
  countDown(3);
  return 0;
}
