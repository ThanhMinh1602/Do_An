import 'package:do_an_flutter/core/components/button/custom_button.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomBarCustom extends StatelessWidget {
  const BottomBarCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w).copyWith(top: 16.0.h),
      width: double.infinity,
      height: 132.h,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              spaceW8,
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'I have read and agree to the ',
                    style: AppStyle.regular_14),
                TextSpan(
                    text: 'Disclaimer',
                    style: AppStyle.regular_14
                        .copyWith(color: AppColor.primaryColor))
              ]))
            ],
          ),
          spaceH12,
          CustomButton(
            btnTxt: 'Register',
            icon: Assets.icons.arrowRightFill.path,
            gradient: AppColor.buildGradient(),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
