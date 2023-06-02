import 'package:budgie/controllers/checkC.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(ChekController());
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(() => Text("${c.check}")),
          ElevatedButton(
              onPressed: () {
                c.updatevalue();
              },
              child: Text("Press"))
        ],
      ),
    );
  }
}
