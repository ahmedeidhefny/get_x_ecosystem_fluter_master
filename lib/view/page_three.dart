import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_ecosystem_fluter_master/view/page_one.dart';
import 'package:get_x_ecosystem_fluter_master/view/page_two.dart';

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Page Three'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).pop();
        },
        label: Text('back'),
        icon:Icon(Icons.arrow_back_ios),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) => PageOne(),
                  //   ),
                  // );
                  //Get.to(PageOne());
                  Get.toNamed('1');
                },
                child: Text('Screen1'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) => PageTwo(),
                  //   ),
                  // );
                  //Get.to(PageTwo());
                  Get.toNamed('2');
                },
                child: Text('Screen2'),
              ),
              FlatButton(
                onPressed: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) => PageThree(),
                  //   ),
                  // );
                  //Get.to(PageThree());
                  Get.toNamed('3');
                },
                child: Text('Screen3'),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed: () {},
                    child: Text('S0'),
                  ),
                  RawMaterialButton(
                    onPressed: () {
                      // Navigator.of(context).pushReplacement(
                      //   MaterialPageRoute(
                      //     builder: (context) => PageOne(),
                      //   ),
                      // );
                      //Get.off(PageOne());
                      Get.offNamed('1');
                    },
                    child: Text('Screen 1 off'),
                  ),
                  OutlineButton(
                    onPressed: () {
                      // Navigator.of(context).pushReplacement(
                      //   MaterialPageRoute(
                      //     builder: (context) => PageTwo(),
                      //   ),
                      // );
                      //Get.off(PageTwo());
                      Get.offNamed('2');
                    },
                    child: Text('Screen 2 off'),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      // Navigator.of(context).pushReplacement(
                      //   MaterialPageRoute(
                      //     builder: (context) => PageThree(),
                      //   ),
                      // );
                      //Get.off(PageThree());
                      Get.offAllNamed('3');
                    },
                    child: Text('Screen 3 off'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
