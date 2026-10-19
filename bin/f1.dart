void main(){
  print(repeat("ха",3));
  
}
String repeat(String text,[int times = 2]){
  String result = "";
  for (int i=0 ; i<times;i++){
    result += text;
  }
  return result;
}