void main() {
  print("I'm being call automatically");
  second(); // => invoke
  third();
}

void second() {
  print("I'm second function");
}

void third() {
  print("I'm third function");
}
/*
    Creating a function
    1.function name
    2.return type -> String,int,double,void => if return type is void , it will not return.
    3.()Parameter holder => void main() -> can call function header
    4.Curley Bracket {} ->also call function block {}
    => the return type of function must be in front of function name.
    5. function only work when it is called except main function => main()
    main -> dart main.dart => main() =>dart SDK automaticall search and call main() function.

*/