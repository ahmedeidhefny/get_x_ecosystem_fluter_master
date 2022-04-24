
import 'package:get/get.dart';

class ThirdController extends GetxController{
  RxInt count1 = 0.obs, count2 = 0.obs;

  void increament1(){
    count1++;
    update();
  }

  void increament2(){
    count2++;
    update();
  }

  int sum() => count1.toInt() + count2.toInt();


}