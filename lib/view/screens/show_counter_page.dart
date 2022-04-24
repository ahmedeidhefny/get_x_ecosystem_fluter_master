import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_ecosystem_fluter_master/controller/counter_controller.dart';

class ShowCounterPage extends StatelessWidget {
  //final contr = Get.lazyPut(() => CounterController());
  CounterController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: GetBuilder<CounterController>(
          builder: (controller) => Center(child: Text('Counter ${controller.count}')),
        ),
      ),
    );
  }
}
