void main() {
  var names = ['Ha', "He", "Hu", "Hey"];
  names.forEach(f1);
  // names.forEach((element) => print(element)); -> can use inside or outside of main function whatever.
}

var f1 = (test) {
  test = "Name is $test";
  print(test);
};

// (){} or ()=>print(); -> it is called anonymous function.
