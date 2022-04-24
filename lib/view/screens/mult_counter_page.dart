import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_ecosystem_fluter_master/controller/sec_controller.dart';
import 'package:get_x_ecosystem_fluter_master/controller/third_controller.dart';

class MultiCounterSumPage extends StatelessWidget {
  
  var controller = Get.put(ThirdController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Obx(() {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Count1 = ${controller.count1}',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Count2 = ${controller.count2}',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Sum = ${controller.sum()}',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                FloatingActionButton(
                  onPressed: () {
                    controller.increament1();
                  },
                  child: Icon(Icons.add),
                ),
                FloatingActionButton(
                  onPressed: () {
                    controller.increament2();
                  },
                  child: Icon(Icons.add),
                )
              ],
            );
          }
          )
        ),
      ),
    );
  }
}
