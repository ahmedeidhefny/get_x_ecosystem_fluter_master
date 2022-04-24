import 'package:get/get.dart';
import 'package:get_x_ecosystem_fluter_master/controller/counter_controller.dart';

class Binding extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => CounterController(), fenix: true);
  }

}