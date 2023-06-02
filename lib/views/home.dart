import 'package:budgie/controllers/checkC.dart';
import 'package:budgie/views/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final c = Get.put(ChekController());

  @override
  Widget build(BuildContext context) {
    final value = c.check.value;
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Budgie"))),
      floatingActionButton: FloatingActionButton(backgroundColor: Theme.of(context).colorScheme.tertiaryContainer,
        onPressed: () {},
        child: Icon(Icons.add,color: Theme.of(context).colorScheme.onTertiaryContainer,),
        focusElevation: 20,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(
        height: 200,
        width: 200,
        child: Card(
          color: Theme.of(context).colorScheme.tertiaryContainer,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text(
                    "${c.check}",
                    style: TextStyle(
                        color:
                            Theme.of(context).colorScheme.onTertiaryContainer,
                        fontSize: 50),
                  )),
              FilledButton(
                  onPressed: () {
                    c.updatevalue();
                  },
                  child: Text("Press")),
              ElevatedButton(
                  onPressed: () {
                    Get.to(const LoginScreen());
                  },
                  child: Text("Press"))
            ],
          ),
        ),
      ),
    );
  }
}
