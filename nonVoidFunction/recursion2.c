#include <stdio.h>

int binCoeff(int n, int k){
  int y1, y2;
  
  if( k == 0 || n == k){
    return 1;
  }else{
    y1 = binCoeff(n - 1, k);
    y2 = binCoeff(n - 1, k - 1);
    return y1 + y2;
  }
}

int main(){
  
  printf("binCoeff(6, 3) = %d\n", binCoeff(6,3));

  return 0;
}
