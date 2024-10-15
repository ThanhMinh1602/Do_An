import 'package:do_an_flutter/core/components/card/model/information.dart';
import 'package:do_an_flutter/core/components/gradient_icon_custom.dart';
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
  const ArbitragePlatform({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTitle(),
        spaceH10,
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
            childAspectRatio: 0.78,
          ),
          itemBuilder: (context, index) {
            return SizedBox(
              height: 206.0.h,
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
    return Column(
      children: [
        GradientText(
          text: "The World’s Best ",
          style: AppStyle.textHeader,
          gradient: AppColor.buildGradient(),
        ),
        spaceH4,
        Center(
          child: GradientText(
            text: "Arbitrage Platform",
            style: AppStyle.textHeader,
            gradient: AppColor.buildGradient(),
          ),
        ),
        spaceH8,
        Text(
          "Automated Operation By Smart Contract",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 18.sp),
        ),
        spaceH8,
        ExploreButton(
          title: 'Join Now',
          onTap: () {},
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
