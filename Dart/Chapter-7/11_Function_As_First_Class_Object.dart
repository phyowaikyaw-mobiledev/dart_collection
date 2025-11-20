void main() {
  result(exam); // => exam -> fucntion -> first-class object.
  answer(question); // => question => function => first-class object.

  var names = ["Andrew", "Jhon Doe", "Lorem", "Pinky"];
  names.forEach(honor); // honor -> function -> first-class object
}

void result(res) {
  // -> res => exam
  res("Mg Mg");
}

void exam(String name) {
  print("Name is $name");
}

void question(int clock) {
  print("Have you finised your dinner at $clock o'clock?");
}

void answer(ans) {
  // -> ans => question
  ans(12);
}

void honor(xyz) {
  print("Honorable name is $xyz");
}

// -> Use function name as first-class object.
