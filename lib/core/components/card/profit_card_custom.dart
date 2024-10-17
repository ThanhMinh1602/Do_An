import 'package:do_an_flutter/core/components/card/crypto_pair_custom.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/utils/font_weight.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class ProfitCardCustom extends StatelessWidget {
  final String title;
  final String profit;
  final String leftIcon;
  final String rightIcon;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final TextStyle? titleStyle;
  final TextStyle? fofitStyle;
  const ProfitCardCustom({
    super.key,
    required this.title,
    required this.profit,
    required this.leftIcon,
    required this.rightIcon,
    this.width,
    this.height,
    this.margin,
    this.titleStyle,
    this.fofitStyle,
  });

  @override
  Widget build(BuildContext context) {
    final gradient = AppColor.buildGradient(opacity: 0.1);
    return Container(
      alignment: Alignment.center,
      width: width ?? 166.w,
      height: height ?? 100.h,
      margin: margin ?? EdgeInsets.symmetric(horizontal: 6.0.w),
      padding: EdgeInsets.symmetric(vertical: 12.0.h, horizontal: 17.0.w),
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(20.0.r),
        border: GradientBoxBorder(gradient: gradient),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title.toUpperCase(),
            style: TextStyle(
                fontSize: 12.sp,
                fontWeight: regular,
                color: AppColor.whiteColor),
          ),
          spaceH4,
          CryptoPairCustom(
            leftIcon: leftIcon,
            rightIcon: rightIcon,
          ),
          spaceH2,
          Text(
            'Profit: $profit%',
            style: TextStyle(
                fontSize: 12.0, color: AppColor.green500, fontWeight: bold),
          )
        ],
      ),
    );
  }
}
