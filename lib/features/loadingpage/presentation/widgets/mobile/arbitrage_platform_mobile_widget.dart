import 'package:do_an_flutter/core/components/button/custom_button.dart';
import 'package:do_an_flutter/core/components/card/model/information.dart';
import 'package:do_an_flutter/core/components/gradient_icon_custom.dart';
import 'package:do_an_flutter/core/components/social_icon_custom.dart';
import 'package:do_an_flutter/core/components/text/gradient_text.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/utils/desktop_space.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class ArbitragePlatformMobile extends StatelessWidget {
  final Function onTapJoinNow;
  const ArbitragePlatformMobile({super.key, required this.onTapJoinNow});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTitle(),
        spaceH24,
        _buildBanner(),
        spaceH20,
        GridView.builder(
          itemCount: profileUtils.length,
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.w,
            mainAxisSpacing: 16.h,
            // childAspectRatio: 0.78,
            childAspectRatio: 171 / 182,
          ),
          itemBuilder: (context, index) {
            return SizedBox(
              height: 430.0.h,
              child: Stack(
                children: [_buildGridCard(index), _buildGridIcon(index)],
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildGridIcon(int index) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: GradientIconCustom(
        iconPath: profileUtils[index].imagePath,
      ),
    );
  }

  Widget _buildGridCard(int index) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      top: 26.h,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 16.0.w)
            .copyWith(top: 36.0.h, bottom: 24.0.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: AppColor.backgroundColor,
          gradient: LinearGradient(colors: [
            AppColor.c_31D0D0.withOpacity(0.1),
            AppColor.c_DC349E.withOpacity(0.1),
          ]),
          border: GradientBoxBorder(
            gradient: LinearGradient(
              colors: [
                AppColor.c_31D0D0.withOpacity(0.2),
                AppColor.c_DC349E.withOpacity(0.2),
              ],
            ),
            width: 2.w,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
                textAlign: TextAlign.center,
                profileUtils[index].title,
                style: TextStyle(
                    color: AppColor.primaryColor,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600)),
            spaceH4,
            Text(
                textAlign: TextAlign.center,
                profileUtils[index].content,
                maxLines: 4,
                style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  color: Colors.white,
                  fontSize: 12.sp,
                ))
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          GradientText(
            text: "The World’s Best ",
            style: AppStyle.textHeader,
            gradient: AppColor.buildGradient(),
          ),
          GradientText(
            text: "Arbitrage Platform",
            style: AppStyle.textHeader,
            gradient: AppColor.buildGradient(),
          ),
          spaceH8,
          Text(
            "Automated Operation By Smart Contract",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 18.sp),
          ),
          spaceH24,
          CustomButton(
            btnTxt: 'Join Now',
            textStyle: AppStyle.semibold_16,
            width: 153.w,
            height: 48.h,
            borderRadius: 14.r,
            icon: Assets.icons.arrowRightFill.path,
            gradient: AppColor.buildGradient(),
            onTap: () {},
          ),
          spaceH24,
          const SocialIconsMobile(),
        ],
      ),
    );
  }

  Widget _buildBanner() {
    return Image.asset(
      Assets.images.mobileBanner.path,
      fit: BoxFit.cover,
      width: double.infinity,
      height: 320.h,
    );
  }
}
