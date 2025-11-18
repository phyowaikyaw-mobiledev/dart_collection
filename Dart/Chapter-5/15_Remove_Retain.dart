void main() {
  // List , Map , Set
  var lisy = ["One", "Two", "Three", "Four", "Two"];
  var mapy = {1: "One", 2: "Two", 3: "Three", 4: "Four", 2: "Two"};
  var mapydifkey = {1: "One", 2: "Two", 3: "Three", 4: "Four", 5: "Two"};
  var sety = {"One", "Two", "Three", "Four", "Two"};
  print("List values are" + lisy.toString());
  print("Map values are" + mapy.toString());
  print("Mapdifkey values are" + mapydifkey.toString());
  print("Set values are" + sety.toString());
}

/*
    Remove Object ->  names.remove("Maung Maung");

    retainAll -> var names = {"Maung Maung", "Aung Aung", "Htun Htun", "Su Su"};
                 names.retainAll({"Aung Aung", "Su Su"});
                 print(names);

    List can duplicate value.
    Map can duplicate value with different key.If same key and same value,it will overwrite.if key different, it show.
    Set cannot duplicate value because set {} value is pure value and unique element.
    */
