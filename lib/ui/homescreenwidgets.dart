import 'package:budgie/controllers/animationcontroller.dart';
import 'package:budgie/controllers/checkC.dart';
import 'package:budgie/controllers/textboxController.dart';
import 'package:budgie/views/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopCard extends StatelessWidget {
  TopCard(
      {required this.value1,
      required this.value2,
      required this.title1,
      required this.title2,
      Key? key})
      : super(key: key);
  var value1 = 0;
  var value2 = 0;
  var title1 = "";
  var title2 = "";

  @override
  Widget build(BuildContext context) {
    final c = Get.put(ChekController());
    return SizedBox(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40), // if you need this
          side: BorderSide(
            color: Colors.grey.withOpacity(0.2),
            width: 3,
          ),
        ),
        color: Theme.of(context).colorScheme.tertiaryContainer,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height / 20,
            horizontal: MediaQuery.of(context).size.width / 25,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "$title1: ",
                    style: TextStyle(
                        color:
                            Theme.of(context).colorScheme.onTertiaryContainer,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                  Text("₹$value1",
                      style: TextStyle(
                        color:
                            Theme.of(context).colorScheme.onTertiaryContainer,
                        fontSize: 20,
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "$title2: ",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onTertiaryContainer,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "₹$value2",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onTertiaryContainer,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TotalBalance extends StatelessWidget {
  TotalBalance({Key? key, required this.balance}) : super(key: key);
  var balance = 0.0;
  final HeightAnimation = Get.put(PageAnimationController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: Colors.grey.withOpacity(0.2), width: 3),
        image: DecorationImage(
            image: AssetImage("assets/cardbackdrop.png"),
            fit: BoxFit.cover,
            opacity: 0.3),
      ),
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "₹ $balance",
                    style: TextStyle(fontSize: 65),
                    textAlign: TextAlign.start,
                  ),
                  GreenButton(
                    onPress: () {
                      HeightAnimation.click();
                    },
                    icon: Icon(Icons.arrow_forward_outlined),
                    buttonHeight: 70,
                  )
                ],
              ),
            ],
          )),
    );
  }
}

class Addbalance extends StatelessWidget {
  Addbalance({Key? key, required this.addbalancecontroller}) : super(key: key);
  TextEditingController addbalancecontroller;
  final HeightAnimation = Get.put(PageAnimationController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return AnimatedContainer(
          height: HeightAnimation.Height.value,
          duration: Duration(milliseconds: 400),
          child: SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GreenButton(onPress: () {}, icon: Icon(Icons.remove)),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFieldInput(
                      fontsize: 25,
                      textEditingController: addbalancecontroller,
                      hintText: "Enter amount",
                      textInputType: TextInputType.number,
                      boxwidth: 20,
                    )),
                GreenButton(onPress: () {}, icon: Icon(Icons.add))
              ],
            ),
          ));
    });
  }
}

class GreenButton extends StatelessWidget {
  final HeightAnimation = Get.put(PageAnimationController());
  final double? buttonHeight;
  final onPress;
  final Icon icon;
  GreenButton(
      {Key? key,
      this.buttonHeight = null,
      required this.onPress,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: buttonHeight,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.tertiaryContainer,
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Colors.grey.withOpacity(0.2), width: 3)),
        child: IconButton(onPressed: onPress, icon: icon));
  }
}

class TransactionList extends StatelessWidget {
  const TransactionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Card(),
      ),
    ));
  }
}
