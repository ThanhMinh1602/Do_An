import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class PageNavigationButton extends StatelessWidget {
  final void Function()? onTap;
  final bool? isRight;

  const PageNavigationButton({
    super.key,
    this.onTap,
    this.isRight,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.flip(
      flipX: isRight ?? false,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 30.0.w,
          height: 68.0.h,
          padding: EdgeInsets.symmetric(vertical: 24.0.h)
              .copyWith(left: 3.w, right: 7.w),
          decoration: BoxDecoration(
            border: const GradientBoxBorder(
                gradient: LinearGradient(
                    colors: [AppColor.c_31D0D0, AppColor.c_DC349E])),
            borderRadius:
                BorderRadius.horizontal(right: Radius.circular(16.0.r)),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColor.whiteColor.withOpacity(0.06),
                AppColor.whiteColor.withOpacity(0.03),
              ],
            ),
          ),
          child: SvgPicture.asset(Assets.images.previousPageIcon),
        ),
      ),
    );
  }
}
