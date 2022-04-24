import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_ecosystem_fluter_master/controller/counter_controller.dart';

class subContainer extends StatelessWidget {
  var controller = Get.put(CounterController());
  final Color colour;
  //final String text;

  subContainer({required this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0), color: colour),
      child: Obx((){
            return Center(child: Text('${controller.count2}'));
          }
      ),
    );
  }
}
