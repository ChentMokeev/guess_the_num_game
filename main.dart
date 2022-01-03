import 'dart:io';

import 'GuessTheNumber.dart';
import 'WhatTheNumber.dart';

void main(List<String> args) {
  var inp = int.parse(stdin.readLineSync()!);
  
  inp == 1 ? stage1() : stage2();
}