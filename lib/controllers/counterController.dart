import 'package:flutter/src/foundation/key.dart';
import 'package:get/get.dart';

class CounterController extends GetxController{

  var counter = 0.obs;

  void increment(){
    counter++;
  }
}