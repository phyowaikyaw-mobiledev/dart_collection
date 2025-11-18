void main() {
  var setty = {"One"};
  setty.add("Two");
  setty.add("Three");
  setty.add("Four");
  print(setty);

  var set2 = <String>{};
  set2.addAll(setty);
  set2.addAll({"Eight", "Nine", "Ten"});
  print(set2);
}

/*
    Create Empty Set
    =>  var sety = {}; // dymaic
        print(sety);
        print(sety.runtimeType);
        Set<String> setty = {};
        print(setty);
        print(setty.runtimeType);
*/
