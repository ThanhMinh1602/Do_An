import 'package:do_an_flutter/core/components/pop_up_header.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomSheetsCustom {
  static Future<void> bottomSheet(BuildContext context, {Widget? child}) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0.r),
              color: AppColor.grey900,
            ),
            child: Wrap(
              children: [
                const PopUpHeader(),
                Padding(padding: EdgeInsets.all(24.0.w), child: child)
              ],
            ),
          );
        });
  }
}
