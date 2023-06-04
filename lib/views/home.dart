import 'package:budgie/controllers/animationcontroller.dart';
import 'package:budgie/controllers/checkC.dart';
import 'package:budgie/controllers/datadisplaycontrollers.dart';
import 'package:budgie/controllers/textboxController.dart';
import 'package:budgie/ui/homescreenwidgets.dart';
import 'package:budgie/views/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final c = Get.put(ChekController());
  final displayBalance = Get.put(DisplayBalanceController());
  final HeightAnimation = Get.put(PageAnimationController());
  final TextEditingController addbalance = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final value = c.check.value;
    return Scaffold(
      appBar: AppBar(
          title: Center(
              child: Text(
        "Budgie",
      ))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Theme.of(context).colorScheme.onTertiaryContainer,
        ),
        focusElevation: 20,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TopCard(
                  value1: 2000,
                  value2: 2000,
                  title1: "Budget",
                  title2: "Remaining"),
              TopCard(
                  value1: 2000, value2: 2000, title2: "Debt", title1: "Savings")
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Total Balance",
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.start,
            ),
          ),
          Obx(() => Padding(
                padding: const EdgeInsets.all(20.0),
                child: TotalBalance(balance: displayBalance.Balance.value),
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Addbalance(
                  addbalancecontroller: addbalance,

                ),
          ),
          TransactionList()
        ],
      ),
    );
  }
}
