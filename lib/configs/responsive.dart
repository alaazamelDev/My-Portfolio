import 'package:flutter/cupertino.dart';

abstract class Responsive {
  
  // return screen width
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  // return screen height
  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
