void main(){
  int number=234;
  palindromeno(number);




}
void palindromeno(int number){
  int reversed=0;
  int original=number;
  while(number>0){
    int lastdigit=number%10;
    reversed=reversed*10+lastdigit;
    number=number~/10;


  }
  if(reversed==original){
    print("$original is a palindrom ");

  }else{
    print("$original not palindrome");
  }
}