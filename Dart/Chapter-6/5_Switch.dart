void main() {
  int age = 25;
  switch (age) {
    case 20:
      print("Age is 20");
      break;
    case 22:
      print("Age is 22");
      break;
    case 25:
      {
        print("Age is 25");
        print("I think I'm young.");
      }
      ;
      break;
    case 26:
      print("Age is 26");
      break;
    default:
      print("I don't know exactly");
  }
  print("Age checking Complete");
}
