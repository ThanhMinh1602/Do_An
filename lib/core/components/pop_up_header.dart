import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopUpHeader extends StatelessWidget {
  const PopUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0.h, horizontal: 24.0.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                spaceW24,
                Text('Connect a wallet',
                    style: AppStyle.semibold_20.copyWith(shadows: [
                      BoxShadow(
                          offset: const Offset(0, 4),
                          blurRadius: 30,
                          spreadRadius: 0,
                          color: AppColor.c_DC349E.withOpacity(0.5))
                    ])),
                GestureDetector(
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
      ],
    );
  }
}
