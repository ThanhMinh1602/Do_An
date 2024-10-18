import 'package:do_an_flutter/core/components/card/model/information.dart';
import 'package:do_an_flutter/core/components/gradient_icon_custom.dart';
import 'package:do_an_flutter/core/components/social_icon_custom.dart';
import 'package:do_an_flutter/core/components/text/gradient_text.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/mobile/explore_button.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class ArbitragePlatform extends StatelessWidget {
  final Function onTapJoinNow;
  const ArbitragePlatform({super.key, required this.onTapJoinNow});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        spaceH52,
        _buildTitle(),
        spaceH24,
        const SocialIcons(isDesktop: false),
        _buildBanner(),
        GridView.builder(
          itemCount: profileUtils.length,
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.w,
            mainAxisSpacing: 16.h,
            childAspectRatio: 0.78,
          ),
          itemBuilder: (context, index) {
            return SizedBox(
              height: 206.0.h,
              child: Stack(
                children: [
                  _buildGridCard(index),
                  _buildGridIcon(index),
                ],
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
        padding: EdgeInsets.symmetric(horizontal: 16.0.w)
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
                style: AppStyle.semiboldText_16
                    .copyWith(color: AppColor.primaryColor)),
            spaceH4,
            Text(
                textAlign: TextAlign.center,
                profileUtils[index].content,
                maxLines: 4,
                style: AppStyle.regularText_14)
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Column(
      children: [
        GradientText(
          text: "The World’s Best ",
          style: AppStyle.semiboldText_40,
          gradient: AppColor.buildGradient(),
        ),
        spaceH4,
        Center(
          child: GradientText(
            text: "Arbitrage Platform",
            style: AppStyle.semiboldText_40,
            gradient: AppColor.buildGradient(),
          ),
        ),
        spaceH8,
        Text(
          "Automated Operation By Smart Contract",
          textAlign: TextAlign.center,
          style: AppStyle.regularText_18,
        ),
        spaceH24,
        ExploreButton(
          title: 'Join Now',
          onTap: onTapJoinNow,
        )
      ],
    );
  }

  Widget _buildBanner() {
    return Image.asset(
      Assets.images.headerbanner.path,
      fit: BoxFit.cover,
      width: double.infinity,
      height: 300.0.h,
    );
  }
}
