void main() {
  var names = ["Mg Mg"];

  names.add("Aung Aung");
  names.removeAt(0);
  print(names);
  print(names.isEmpty);
}

/*
  List Remove -> 
  -> names.remove("Mg Mg"); -> Remove using Object
  -> names.removeAt(index number); -> Remove using with index number
*/
