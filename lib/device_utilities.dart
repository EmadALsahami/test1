import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class DeviceUtilities
{
  static void hideKeyboard(BuildContext context)
  {
    FocusScope.of(context).requestFocus(FocusNode());
  }
  static void getFullScreen(bool enable)
  {
    SystemChrome.setEnabledSystemUIMode(enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);
  }
  static double getScreenHeight(BuildContext context)
  {
    return MediaQuery.of(Get.context!).size.height;
  }
  static double getScreenWidth(BuildContext context)
  {
    return MediaQuery.of(context).size.width;
  }
}