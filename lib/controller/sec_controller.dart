
import 'package:get/get.dart';

class SecController extends GetxController{
  int count1 = 0, count2 = 0;

  void increament1(){
    count1++;
    update();
  }

  void increament2(){
    count2++;
    update();
  }

  int sum() => count1 + count2;


}