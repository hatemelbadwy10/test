import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ShowToastMessages {
  static showMessage(
      String msg, {
        Color textColor = Colors.white,
        Color backgroundColor = Colors.black,
        ToastGravity gravity = ToastGravity.BOTTOM,
        Toast toastLength = Toast.LENGTH_SHORT,
      }) {
    Fluttertoast.cancel();
    Fluttertoast.showToast(
      msg: msg,
      gravity: gravity,
      backgroundColor: backgroundColor,
      toastLength: toastLength,
      textColor: textColor,
    );
  }
}
