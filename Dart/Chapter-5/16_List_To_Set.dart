void main() {
  var names = [
    "Mg Mg",
    "Aung Aung",
    "Tun Tun",
    "Su Su",
    "Mg Mg",
    "Su Su",
  ]; // List
  var sety = names.toSet(); // List => Set => duplicate values are cleared
  var nameList = sety.toList(); // Set => List
  print(nameList);
}
