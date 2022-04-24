import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {

  int count = 0;

  void increament() {
    count++;
    update();
  }

  void decreament() {
    if (count <= 0) return;
    count--;
    update();
  }

  RxInt count2 = 0.obs;

  void increament2() {
    count2++;
  }

  void decreament2() {
    if (count2 <= 0) return;
    count2--;
  }
}
