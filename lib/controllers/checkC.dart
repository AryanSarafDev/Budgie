import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ChekController extends GetxController
{
  final check = 1.obs;
  updatevalue()
  {
    check(check.value+1);
  }
}

