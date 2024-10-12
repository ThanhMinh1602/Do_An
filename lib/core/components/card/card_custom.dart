import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class CardCustom extends StatelessWidget {
  final String title;
  final String content;
  final TextStyle? titleStyle;
  final TextStyle? contentStyle;
  final String? image;
  final EdgeInsetsGeometry? margin;

  const CardCustom({
    super.key,
    required this.title,
    required this.content,
    this.titleStyle,
    this.contentStyle,
    this.image,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.only(top: 20.h),
      padding: EdgeInsets.symmetric(vertical: 32.0.h, horizontal: 16.0.w),
      decoration: BoxDecoration(
        border: GradientBoxBorder(
          width: 1.0,
          gradient: AppColor.buildGradient(opacity: 0.2),
        ),
        borderRadius: BorderRadius.circular(16.0.r),
        gradient: AppColor.buildGradient(opacity: 0.1),
      ),
      child: Expanded(
        child: Column(
          crossAxisAlignment: image != null && image!.isNotEmpty
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.center,
          children: [
            if (image != null && image!.isNotEmpty)
              Align(
                alignment: Alignment.centerLeft,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(3.0.r),
                  child: Image.asset(
                    image!,
                    width: 68.8.w,
                    height: 48.0.h,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            if (image != null && image!.isNotEmpty) spaceH12,
            Align(
              alignment: (image != null && image!.isNotEmpty)
                  ? Alignment.centerLeft
                  : Alignment.center,
              child: Text(
                textAlign: (image != null && image!.isNotEmpty)
                    ? TextAlign.start
                    : TextAlign.center,
                title,
                style: titleStyle ?? AppStyle.textTitle,
              ),
            ),
            SizedBox(height: 8.0.h),
            Text(
              content,
              textAlign: image != null && image!.isNotEmpty
                  ? TextAlign.start
                  : TextAlign.center,
              style: contentStyle ?? AppStyle.textContent,
            ),
          ],
        ),
      ),
    );
  }
}
