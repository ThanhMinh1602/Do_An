import 'package:do_an_flutter/core/components/appbar/app_bar_mobile.dart';
import 'package:do_an_flutter/core/components/pop_up_header.dart';
import 'package:do_an_flutter/core/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomSheetsCustom {
  static Future<void> showBottomSheet(BuildContext context,
      {required String title,
      required Widget child,
      double? height,
      EdgeInsetsGeometry? padding}) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      isDismissible: false,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Container(
          height: height ??
              MediaQuery.of(context).size.height -
                  AppBarMobile(context).preferredSize.height -
                  20.h,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
            color: Colors.grey[900],
          ),
          child: Column(
            children: [
              PopUpHeader(
                title: title,
              ),
              Expanded(
                  child: Padding(
                      padding: padding ??
                          EdgeInsets.symmetric(
                              vertical: Dimensions.paddingVertical,
                              horizontal: Dimensions.paddingHorizontal),
                      child: child))
            ],
          ),
        );
      },
    );
  }
}
