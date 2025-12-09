import 'dart:ffi';

class AA {
  output() {
    print("This is output Method");
  }

  answer() {
    print("This is Answer Method");
  }

  question() {
    print("This is Question Method");
  }
}

void main() {
  var i = AA();
  // i.output();
  // i.answer();
  i
    ..output()
    ..answer()
    ..question(); // .. -> Cascaed notation -> method changing
}
