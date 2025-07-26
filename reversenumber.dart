void main(){
  int n=123;
  int result=reverserd(n);
  print("reversed number is $result");
}
int reverserd(int n){
  int rev=0;
  while(n>0){
    int lastdigit=n%10;//123 last 3 //12 =2
    rev=rev*10+lastdigit;//first time rev 0 *10+3=3 rev=3*10+3=33

    n=n~/10;//123/10=12=12/10=1
  }
  return rev;
}