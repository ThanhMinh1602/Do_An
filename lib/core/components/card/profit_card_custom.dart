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
  const ProfitCardCustom({
    super.key,
    required this.title,
    required this.profit,
    required this.leftIcon,
    required this.rightIcon,
  });

  @override
  Widget build(BuildContext context) {
    final gradient = AppColor.buildGradient(opacity: 0.1);
    return Container(
      alignment: Alignment.center,
      width: 166.w,
      height: 100.h,
      margin: EdgeInsets.symmetric(horizontal: 6.0.w),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildProfitItem(leftIcon),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(Assets.icons.rtlArrowIcon),
                  spaceH4,
                  SvgPicture.asset(Assets.icons.ltrArrowIcon),
                ],
              ),
              _buildProfitItem(leftIcon),
            ],
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

  Widget _buildProfitItem(String iconPath) {
    return Container(
      width: 40.0.w,
      height: 40.0.w,
      padding: const EdgeInsets.all(1.0),
      decoration: BoxDecoration(
        color: AppColor.backgroundColor,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
              offset: const Offset(-2, 0),
              blurRadius: 10.0,
              spreadRadius: 0,
              color: AppColor.c_DC349E.withOpacity(0.5)),
          BoxShadow(
              offset: const Offset(-2, 0),
              blurRadius: 10.0,
              spreadRadius: 0,
              color: AppColor.c_31D0D0.withOpacity(0.3))
        ],
        border:
            GradientBoxBorder(gradient: AppColor.buildGradient(), width: 3.0),
      ),
      child: Image.asset(iconPath),
    );
  }
}
