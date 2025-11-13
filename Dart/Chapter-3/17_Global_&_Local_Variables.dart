var prefixname = "Mr"; // GLoval variable => outside of {}

void main() {
  var name = "Andrew"; // local variable => Local Scope Inside of {}
  print("$prefixname $name");
  data();
}

void data() {
  var shop = prefixname + " Mobile ";
  print(shop);
}

// {} -> can call block
