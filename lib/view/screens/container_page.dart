import 'package:flutter/material.dart';
import 'sub_container.dart';
import 'package:get/get.dart';
import 'package:get_x_ecosystem_fluter_master/controller/counter_controller.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            subContainer(
              colour: Colors.blue,
            ),
            subContainer(
              colour: Colors.yellow,
            ),
          ],
        ),
        SizedBox(
          height: 30.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            subContainer(
              colour: Colors.green,
            ),
            subContainer(
              colour: Colors.red,
            ),
          ],
        ),
      ],
    );
  }
}


