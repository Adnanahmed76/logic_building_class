void main(){
  //string creation and value
  String country="India";
  var city="New Delhi";
  String street="Street 4";
  //String interpolation
  String address="User Address is $street,$city,$country";
  print(address);
 //String functions

  var result=city.contains("Address");
  print(result);
  var index=address.indexOf("D");
  print(index);
  print(address.length);
  var sub=address.substring(0,address.length-1);
  print(sub);
  
}