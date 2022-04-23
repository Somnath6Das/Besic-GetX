import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_besic/controller/controller.dart';
import 'package:getx_besic/views/second_page.dart';

class HomePage extends StatelessWidget {
//  final Controller = Get.put(MyController());
//After Buinding
  final Controller = Get.find<MyController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CupertinoNavigationBar(
        backgroundColor: Colors.blue,
        middle: Text(
          "Learn GetX",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text(
              "Count is ${Controller.count}",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Controller.increment();
                  },
                  child: Text('Increment'))),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(SecondPage());
                    print(MyController().getString());
                    //push replacehment
                    //Get.off(SecondPage());
                  },
                  child: Text('Route to Second Page')))
        ],
      ),
    );
  }
}
