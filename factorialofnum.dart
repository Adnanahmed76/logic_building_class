//find a factorial of a number
void main(){
int result=factorialnumber(5);
print(result);

}
int factorialnumber(int n){
  int factorial=1;
  for(int i=1;i<=n;i++){
    factorial*=i;

  }
  return factorial;
}