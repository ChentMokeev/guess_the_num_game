// Stage 3

import 'dart:io';
import 'dart:math';

void stage2() {
  var x = new Random();
  askTheNumber(x.nextInt(100));
}

int step = 0, mid = 50;

askTheNumber(int n) {
  step++;
  print("Guess the number! ");
  var inp = int.parse(stdin.readLineSync()!);
  if (inp < n) {
    print('greater');
    askTheNumber(n);
  } else if (inp > n) {
    print("less");
    askTheNumber(n);
  } else if (inp == n) {
    print("Got $n in $step steps!");
    return;
  } else if (inp == "") {
    askTheNumber(n);
  }
}
