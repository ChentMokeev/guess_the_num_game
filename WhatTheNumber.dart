// Stage 1

import 'dart:io';

void stage1() {
  guessTheNumber();
}

int step = 0, mid = 50;
guessTheNumber([int min = 0, int max = 100]) {
  step++;
  mid = ((min + max) / 2).round();
  print("Is it $mid?");
  var inp = stdin.readLineSync()!;
  if (inp == 'less') {
    max = mid - 1;
    guessTheNumber(min, max);
  } else if (inp == 'greater') {
    min = mid + 1;
    guessTheNumber(min, max);
  } else if (inp == 'yes') {
    print("Got it in $step steps!");
    return;
  }
}
