import 'dart:isolate';

void doIt(String message) {
  print("Working on $message");
}

void main() {
  Isolate.spawn(doIt, "First Core");
  Isolate.spawn(doIt, "Second Core");
  Isolate.spawn(doIt, "Third Core");
}

/*
  Concourrency 
  -> 8 core -> single core
  -> Dart Programming -> single thread
  -> THread -> Concourrency
*/
