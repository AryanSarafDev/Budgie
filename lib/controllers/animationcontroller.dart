import 'package:get/get.dart';
class PageAnimationController extends GetxController
{
  final Height = 0.0.obs;

  click() {
    if (Height == 0.0) {
      Height.value=90.0;
      print(Height.value);
      update();
    }
    else {
      Height.value=0.0;
      print(Height.value);
      update();
    }
  }
  }
