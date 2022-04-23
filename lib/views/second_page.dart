import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_besic/controller/controller.dart';

class SecondPage extends StatefulWidget {
  SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
  //  Get.lazyPut(() => MyController());
   final Controller = Get.find<MyController>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: const Text(
          'GetX details',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Obx(
            () => Text(
              "Count is ${Controller.count}",
              style: TextStyle(fontSize: 25),
            ),
          ), Center(
              child: ElevatedButton(
                  onPressed: () {
                    Controller.increment();
                  },
                  child: Text('Increment'))),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Get.back();
                    print(MyController().getString());
                  },
                  child: Text('Get back to first page')))
        ],
      ),
    );
  }
}
