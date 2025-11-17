void main() {
  var guns = ["M416", "AKM", "Scar", "Uzi", "DP", "S12K"];

  print(guns.length);
  print(guns.isEmpty);
  print(guns.isNotEmpty);
  print(guns.first);
  print(guns.last);
  guns[2] = "AWM"; // update
  print(guns);
  print(guns.reversed);
  print(guns.reversed.runtimeType);
  print(guns.single); // It will work or true when element is only one
}

/*

  List
  -> length
  -> isEmpty
  -> isNotEmpty
  -> first
  -> last
  -> reversed
  -> single
  -> update

*/
