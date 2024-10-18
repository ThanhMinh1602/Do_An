import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopUpHeader extends StatelessWidget {
  final String title;
  final EdgeInsetsGeometry padding;
  final bool isDeskTop;

  const PopUpHeader({
    super.key,
    this.title = 'Connect a wallet', // Giá trị mặc định
    this.padding = EdgeInsets.zero, // Giá trị mặc định
    this.isDeskTop = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: isDeskTop ? 20 : 20.0.h,
            horizontal: isDeskTop ? 24 : 24.0.w,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              isDeskTop ? const SizedBox(width: 24.0) : spaceW24,
              Text(
                title,
                style: (isDeskTop
                        ? DesktopAppStyle.semiboldStyle_14
                        : AppStyle.semibold_20)
                    .copyWith(
                  shadows: [
                    BoxShadow(
                      offset: const Offset(0, 4),
                      blurRadius: 30,
                      spreadRadius: 0,
                      color: AppColor.c_DC349E.withOpacity(0.5),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Icon(
                  Icons.close,
                  size: isDeskTop ? 24 : 24.0.w,
                  color: AppColor.whiteColor,
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: AppColor.whiteColor.withOpacity(0.1),
          height: 1,
        ),
      ],
    );
  }
}
