void main(){
  List<String> names = ["м","ф","ы"];
  List<String> upper = names.map((name)=>name.toUpperCase()).toList();
  print(upper);

  List<String> longNames = names.where((name) => name.length > 4).toList();
  print(longNames);
  
}
