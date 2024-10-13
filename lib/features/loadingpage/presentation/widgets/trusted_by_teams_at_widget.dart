import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/utils/font_weight.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TrustedByTeamsAtWidget extends StatelessWidget {
  const TrustedByTeamsAtWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Trusted By Teams At',
          style: TextStyle(
              fontSize: 20.0.sp, fontWeight: bold, color: AppColor.whiteColor),
        ),
        spaceH16,
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 27.0.w, vertical: 24.0.h),
          decoration: BoxDecoration(
              gradient: AppColor.buildGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                AppColor.whiteColor.withOpacity(0.05),
                AppColor.whiteColor.withOpacity(0.02)
              ])),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    Assets.images.centrifugeSvg,
                    height: 32.h,
                  ),
                  spaceW18,
                  SvgPicture.asset(Assets.images.fireblocksSvg, height: 32.h),
                  spaceW18,
                  SvgPicture.asset(Assets.images.consensysSvg, height: 32.h),
                ],
              ),
              spaceH18,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(Assets.images.jpMorganChaseSvg,
                      height: 32.h),
                  spaceW18,
                  SvgPicture.asset(Assets.images.masSvg, height: 32.h),
                ],
              ),
              spaceH18,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(Assets.images.bancoCentral, height: 32.h),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
