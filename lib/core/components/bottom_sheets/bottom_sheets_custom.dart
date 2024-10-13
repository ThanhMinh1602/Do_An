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
                Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 20.0.h, horizontal: 24.0.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        spaceW24,
                        Text('Connect a wallet',
                            style: AppStyle.semibold_20.copyWith(shadows: [
                              BoxShadow(
                                  offset: Offset(0, 4),
                                  blurRadius: 30,
                                  spreadRadius: 0,
                                  color: AppColor.c_DC349E.withOpacity(0.5))
                            ])),
                        InkWell(
                          onTap: () => Navigator.of(context).pop(),
                          child: Icon(
                            Icons.close,
                            size: 24.0.w,
                            color: AppColor.whiteColor,
                          ),
                        )
                      ],
                    )),
                Divider(
                  color: AppColor.whiteColor.withOpacity(0.1),
                  height: 1,
                ),
                Padding(padding: EdgeInsets.all(24.0.w), child: child)
              ],
            ),
          );
        });
  }
}
