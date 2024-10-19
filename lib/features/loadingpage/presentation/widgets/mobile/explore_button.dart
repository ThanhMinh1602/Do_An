import 'package:do_an_flutter/core/components/button/custom_button.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExploreButton extends StatelessWidget {
  final String? title;
  final Function? onTap;
  final double? radius;

  const ExploreButton({
    super.key,
    this.title,
    this.onTap,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      btnTxt: title ?? 'EXPLORE',
      width: title != null ? 128.w : 153.w,
      icon: Assets.icons.arrowRightFill.path,
      gradient: AppColor.buildGradient(),
      borderRadius: radius ?? 14.r,
      onTap: onTap,
    );
  }
}
