import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_ecosystem_fluter_master/controller/counter_controller.dart';

import 'container_page.dart';

class Dashborad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: GetBuilder<CounterController>(
        init: CounterController(),
        builder: (controller) => FloatingActionButton.extended(
          onPressed: () {
            controller.increament();
          },
          label: Text('plus'),
          icon: Icon(Icons.add),
        ),
      ),
      body: ContainerPage(),
    );
  }
}
