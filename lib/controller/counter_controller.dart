import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt count = 0.obs;

  void increament() {
    count++;
  }

  void decreament() {
    if (count <= 0) return;
    count--;
  }
}
