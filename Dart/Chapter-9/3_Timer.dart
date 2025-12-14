import 'dart:async';

int index = 0;
int ind = 0;
void main() {
  Timer.periodic(Duration(seconds: 2), (timer) {
    index++;
    print("Now timer is $index");

    if (index == 20) {
      print("Time out");
      timer.cancel();
    }
  });

  var names = ["Aung", "Mg", "Shoung", "Roung", "Daung"];
  Timer.periodic(Duration(seconds: 1), (timer) {
    if (ind < names.length) {
      print("Current user name is ${names[ind]}");
    } else {
      print("These are all users");
      timer.cancel();
    }
    ind++;
  });
}
