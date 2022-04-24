import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_ecosystem_fluter_master/controller/counter_controller.dart';

class CounterPage extends StatelessWidget {
  var controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.blueAccent),
          child: Obx (() => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                controller.increament2();
              },
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
            Text(
              '${controller.count2.value}',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            IconButton(
              onPressed: () {
                controller.decreament2();
              },
              icon: Icon(
                Icons.remove,
                color: Colors.white,
              ),
            ),
          ],
        )),
          // child: GetX<CounterController>(
          //   init: CounterController(),
          //   builder: (controller)=>
          ),
        ),
    );
  }
}
