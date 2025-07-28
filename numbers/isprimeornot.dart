void main(){
bool result =primeornot(3);
print(result);
}


bool primeornot(int number){
  if(number<=1)return false;
  for(int i=2;i<=number~/2;i++){
if(number%2==0) return false;
  }
  return true;
}