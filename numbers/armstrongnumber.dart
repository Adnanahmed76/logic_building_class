

void main(){
int n=903;
int r,sum,data;
data=n;
sum=0;
while(n!=0){
  //% moduls opeation use for to get remainder

  r=n%10;
  sum=sum+(r*r*r);
  n=n~/10;
  
}
if(sum==data){
  print("this is a Armstrong number $sum");
  
  }else{
    print("no it's not a armstrong number $sum");
  }

}

