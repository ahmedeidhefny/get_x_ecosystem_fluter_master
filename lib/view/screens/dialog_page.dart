import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_ecosystem_fluter_master/controller/counter_controller.dart';
import 'package:get_x_ecosystem_fluter_master/view/screens/counter_page.dart';
import 'package:get_x_ecosystem_fluter_master/view/screens/show_counter_page.dart';

class DialogPage extends StatelessWidget {
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
                // Get.defaultDialog(
                //   title: "title",
                //   titlePadding: EdgeInsets.all(30.0),
                //   titleStyle: TextStyle(
                //     fontSize: 50,
                //   ),
                //   backgroundColor: Colors.red,
                //   textCancel: 'cancel',
                //   textConfirm: 'confirm',
                //   cancel: Text('cancel'),
                //   content: Container(
                //     width: 100.0,
                //     height: 100.0,
                //     color: Colors.blue,
                //   ),
                //   onCancel: (){
                //   },
                //   onConfirm: (){},
                //   barrierDismissible: false
                // );
                Get.bottomSheet(
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(onPressed: (){}, child: Text('btn1')),
                      ElevatedButton(onPressed: (){}, child: Text('btn2')),
                      ElevatedButton(onPressed: (){}, child: Text('btn3')),
                      ElevatedButton(onPressed: (){}, child: Text('btn4')),
                    ],
                  ),
                  isScrollControlled: true,
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0))
                  ),
                  elevation: 10,
                  enterBottomSheetDuration: Duration(seconds: 2),
                  exitBottomSheetDuration: Duration(seconds: 3),
                  isDismissible: false,
                );
              },
              child: Text('show Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
