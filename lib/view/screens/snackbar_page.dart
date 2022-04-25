import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_ecosystem_fluter_master/controller/counter_controller.dart';
import 'package:get_x_ecosystem_fluter_master/view/screens/counter_page.dart';
import 'package:get_x_ecosystem_fluter_master/view/screens/show_counter_page.dart';

class SnackbarPage extends StatelessWidget {
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
                Get.snackbar(
                  "title",
                  "message",
                  colorText: Colors.red,
                  borderWidth: 3,
                  borderColor: Colors.green,
                  duration: Duration(seconds: 2),
                  icon: Icon(Icons.add),
                  borderRadius: 50,
                  snackPosition: SnackPosition.BOTTOM,
                  margin: EdgeInsets.all(30.0),
                  padding: EdgeInsets.all(15.0),
                  backgroundColor: Colors.black26,
                  leftBarIndicatorColor: Colors.yellow,
                  titleText: Text(
                    'title2',
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                  messageText: Text(
                    'title2',
                    style: TextStyle(fontSize: 30, color: Colors.green),
                  ),
                  boxShadows: [
                    BoxShadow(color: Colors.black12, offset: Offset(10, 10))
                  ],
                  backgroundGradient: LinearGradient(
                    colors: [Colors.red, Colors.blue, Colors.green],
                  ),
                  mainButton: TextButton(onPressed: (){}, child: Text('close'))
                );
              },
              child: Text('Snack bar'),
            ),
          ],
        ),
      ),
    );
  }
}
