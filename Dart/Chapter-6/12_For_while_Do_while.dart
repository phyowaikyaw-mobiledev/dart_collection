void main() {
  var names = ["Mg Mg", "Aung Aung", "Tun Tun", "Su Su"];
  for (var i = 0; i < names.length; i++) {
    print("The answer is $i");
  }
  print("********for loop done********");

  var inde = 0;
  while (inde < names.length) {
    print("The second answer is $inde");
    inde++;
  }
  print("********While loop done********");

  var t = 0;
  do {
    print("The last answer is $t");
    t++;
  } while (t < names.length);
  print("********Do while Loop Done********");
}
/*
  for loop => if we know start point and end point use for loop.
  while loop => if the end point is not sure use while loop.
  do while loop => whenever true or false boolean expression => the loop will output at least one time..

*/