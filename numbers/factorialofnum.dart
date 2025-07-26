//find a factorial of a number
void main(){
int result=factorialnumber(5);
print(result);

}
int factorialnumber(int n){
  int factorial=1;
  for(int i=1;i<=n;i++){//1*1=1 i+1 i=2 factorial=1 i*2=2 factorial 2 i=3 factorial 2*3=6 i=4 factorial =6 i*factorial 6*4=24 factorial 24*5 =120 and condition pass
  
    factorial*=i;

  }
  return factorial;
}