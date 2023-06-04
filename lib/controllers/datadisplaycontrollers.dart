import 'package:get/get.dart';
class DisplayBalanceController extends GetxController
{
  final Balance = 2000.0.obs;
  addvalue(double sum)
  {
    Balance(Balance.value+sum);
  }
  deletevalue(double sum)
  {
    Balance(Balance.value+sum);
  }
}

/* Container(
height: 200,
width: 200,
child: Card(
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(40), // if you need this
side: BorderSide(
color: Colors.grey.withOpacity(0.2),
width: 5,
),
),
color: Theme.of(context).colorScheme.tertiaryContainer,
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Obx(() => Text(
"${c.check}",
style: TextStyle(
color: Theme.of(context)
    .colorScheme
    .onTertiaryContainer,
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
) */