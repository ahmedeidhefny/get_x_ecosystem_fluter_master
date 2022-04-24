import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_ecosystem_fluter_master/controller/counter_controller.dart';
import 'package:get_x_ecosystem_fluter_master/view/screens/counter_page.dart';
import 'package:get_x_ecosystem_fluter_master/view/screens/show_counter_page.dart';

class SplashPage extends StatelessWidget {
 // final controller = Get.lazyPut(() => CounterController(), fenix: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(()=>CounterPage());
              },
              child: Text('Counter Page'),
            ),

            ElevatedButton(
              onPressed: () {
                Get.to(()=>ShowCounterPage());
              },
              child: Text('Counter Page'),
            ),
          ],
        ),
      ),
    );
  }
}
