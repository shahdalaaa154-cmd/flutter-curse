import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'counter_controller.dart';

class Counter extends StatelessWidget {
  Counter({super.key});

  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
  body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(() {
          return Text(
            controller.counter.toString(),
            style: const TextStyle(fontSize: 50),
          );
        }),
        const SizedBox(height: 30),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                controller.add1();
              },
              child: Container(
                width: 150,
                height: 50,
                color: Colors.red,
                alignment: Alignment.center,
                child: const Text('1', style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(height: 10),
            
            GestureDetector(
              onTap: () {
                controller.add2();
              },
              child: Container(
                width: 150,
                height: 50,
                color: Colors.green,
                alignment: Alignment.center,
                child: const Text('2', style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(height: 10),

            GestureDetector(
              onTap: () {
                controller.add3();
              },
              child: Container(
                width: 150,
                height: 50,
                color: Colors.blue,
                alignment: Alignment.center,
                child: const Text('3', style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                controller.reset();
              },
              child: Container(
                width: 150,
                height: 50,
                color: Colors.orange,
                alignment: Alignment.center,
                child: const Text('Reset', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
);
  }
}