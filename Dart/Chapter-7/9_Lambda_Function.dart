void main() {
  sample2();
  sample3("Andrew", "I write code");
  print(sample4(name: "RIKY"));
}

void sample1() {
  print("I'm mobile developer");
}

void sample2() => print("To be a full stack developer");

void sample3(name, bio, [motto]) =>
    print("Name is $name , bio is $bio and My Future is Bright");

String sample4({name = "Andrew", age = 23}) => "Name is $name & Age is $age";

// Lambda Function or Lambda Expression
// Arrow function.
