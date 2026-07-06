#include <stdio.h>



int main(){

  int input1;
  int input2;
  
  scanf("%d", &input1);
  
  scanf("%d", &input2);
  
  if (input1 == 2 || input2 == 2){
    printf("yes\n");
  }else{
    printf("nah\n");
  }
  
  return 0;
}
