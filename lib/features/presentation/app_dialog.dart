import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class AppDialog {
  AppDialog._();

  static void loading(BuildContext context) {
    isOpen = true;
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Center(
          child: SizedBox(
            width: 20.h,
            height: 20.h,
            child: CircularProgressIndicator(
              color: Colors.blue,
              strokeWidth: 3.w,
            ),
          ),
        );
      },
    ).whenComplete(() => isOpen = false);
  }

  static void hide(BuildContext context) {
    if (isOpen) {
      context.pop();
    }
  }

  static bool isOpen = false;
}
