void main() {
  var names = ["Mg Mg", "Aung Aung"];
  print(names.length);
  names.add("Su Su");
  names.add("Tun Tun");
  names.add("Su Su");

  print(names);

  names.remove("Su Su");
  names.remove("Mg Mg");
  print(names);
}

// List accept duplicate element.
