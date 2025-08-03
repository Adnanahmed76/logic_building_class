//reversed string manually
//here i used loop for each word

void main(){
  String text="adnan";
  String reversed="";
  for(int i=text.length-1;i>=0;i--)
  {
    reversed=reversed+text[i];
  }
  print("Reverse String is $reversed");
}