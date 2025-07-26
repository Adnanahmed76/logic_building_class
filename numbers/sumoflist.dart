void main(){
sumoflist([12,34]);
}
void sumoflist(List<int> numbers){
  int sum=numbers.fold(0, (prev,element)=>prev+element);
  print("sum is : $sum");
}