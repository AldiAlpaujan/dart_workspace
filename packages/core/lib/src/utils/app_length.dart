import 'package:flutter/material.dart';

class AppLen {
  static double width(BuildContext context, [double percent = 1]) {
    return MediaQuery.of(context).size.width * percent;
  }

  static double height(BuildContext context, [double percent = 1]) {
    return MediaQuery.of(context).size.height * percent;
  }
}
