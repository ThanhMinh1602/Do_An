import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class CryptoPairCustom extends StatelessWidget {
  final String leftIcon;
  final String rightIcon;
  final double? iconSize;
  final double? arrowWidth;
  final double? arrowHeight;
  final double? borderWidth;
  final double? blur;
  final double? positionX;
  final double? arrowSpace;
  final MainAxisAlignment? mainAxisAlignment;
  const CryptoPairCustom(
      {super.key,
      required this.leftIcon,
      required this.rightIcon,
      this.iconSize,
      this.arrowWidth,
      this.arrowHeight,
      this.borderWidth,
      this.blur,
      this.positionX,
      this.arrowSpace,
      this.mainAxisAlignment});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.spaceBetween,
      children: [
        _buildProfitItem(leftIcon),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Assets.icons.rtlArrowIcon,
              width: arrowWidth,
              height: arrowHeight,
            ),
            if (arrowSpace == null) spaceH4,
            SvgPicture.asset(
              Assets.icons.ltrArrowIcon,
              width: arrowWidth,
              height: arrowHeight,
            ),
          ],
        ),
        _buildProfitItem(rightIcon),
      ],
    );
  }

  Widget _buildProfitItem(String iconPath) {
    return Container(
      width: iconSize ?? 40.0.w,
      height: iconSize ?? 40.0.w,
      padding: const EdgeInsets.all(1.0),
      decoration: BoxDecoration(
        color: AppColor.backgroundColor,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
              offset: Offset(positionX ?? -2, 0),
              blurRadius: blur ?? 10.0,
              spreadRadius: 0,
              color: AppColor.c_DC349E.withOpacity(0.5)),
          BoxShadow(
              offset: Offset(positionX ?? -2, 0),
              blurRadius: blur ?? 10.0,
              spreadRadius: 0,
              color: AppColor.c_31D0D0.withOpacity(0.3))
        ],
        border: GradientBoxBorder(
            gradient: AppColor.buildGradient(), width: borderWidth ?? 3.0),
      ),
      child: Image.asset(iconPath),
    );
  }
}
