void main() {
  var sectionA = ["Mg Mg", "Aung Aung"];
  var sectionB = ["Gu Gu", "Dee Dee"];
  var sectionC = ["Su Su", ...sectionB]; // -> Separate Operator ...

  sectionA.addAll(sectionB);
  print(sectionA);
  sectionA.removeAt(0);
  sectionA.insertAll(1, sectionB);
  print(sectionA);
  print(sectionC);
}

// addAll , insertAll => adding Interatable values to List
// separate Operator
