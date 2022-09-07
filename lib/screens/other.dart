import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/controllers/counterController.dart';

import 'package:get/get.dart';

class OtherScreen extends StatelessWidget {
  OtherScreen({Key? key}) : super(key: key);

  final CounterController _counterController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Screen was clicked ${_counterController.counter.value} times"),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: (){
              Get.back();
            }, 
            child: Text("Go to the previous screen"),
            
          )

        ],
      ),
    );
  }
}
