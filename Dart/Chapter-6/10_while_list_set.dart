void main() {
  var names = ["Mg Mg", "Aung Aung", "Tun Tun", "Su Su"];
  var inde = 0;
  while (inde < names.length) {
    print("Customer is ${names[inde]}");
    inde++;
  }
  var food = {"Mango", "Apple", "Tomato", "Lemon"};
  var f = 0;
  while (f < food.length) {
    print("Organic food is ${food.elementAt(f)}");
    f++;
  }
  for (var x = 0; x < food.length; x++) {
    print("${food.elementAt(x)} is ready");
  }
}
