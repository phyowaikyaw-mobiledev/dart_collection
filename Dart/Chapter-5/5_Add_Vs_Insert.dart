void main() {
  var names = ["Mg Mg", "Aung Aung"];
  names.add("Tun Tun"); // At the end of the list => added at end
  // names.insert(index, element);
  names.insert(
    1,
    "Su Su",
  ); // [Mg Mg, Su Su, Aung Aung, Tun Tun] => At a specific index => inserted at index 1
  print(names);
  names.insert(3, "Mya Mya"); // [Mg Mg, Su Su, Aung Aung,Mya Mya,Tun Tun]
  print(names);
}

// add vs insert
