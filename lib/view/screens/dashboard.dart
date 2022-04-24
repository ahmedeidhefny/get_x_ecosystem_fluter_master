import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_ecosystem_fluter_master/controller/counter_controller.dart';

import 'container_page.dart';

class Dashborad extends StatelessWidget {
  var controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: Obx((){
            return FloatingActionButton.extended(
              onPressed: () {
                controller.increament2();
              },
              label: Text('plus ${controller.count2.value}'),
              icon: Icon(Icons.add),
            );
          }
      ),
      body: ContainerPage(),
    );
  }
}
