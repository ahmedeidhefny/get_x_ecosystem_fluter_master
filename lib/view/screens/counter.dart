import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_ecosystem_fluter_master/controller/counter_controller.dart';

class CounterPage extends StatelessWidget {
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
          child: GetBuilder<CounterController>(
            init: CounterController(),
            builder: (controller)=>  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    controller.increament();
                  },
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '${controller.count}',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {
                    controller.decreament();
                  },
                  icon: Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}