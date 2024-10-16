import 'package:carousel_slider/carousel_slider.dart';
import 'package:do_an_flutter/core/components/blur/circle_blue_blur.dart';
import 'package:do_an_flutter/core/components/blur/circle_pink_blur.dart';
import 'package:do_an_flutter/core/components/card/profit_card_custom.dart';
import 'package:do_an_flutter/core/components/text/gradient_text.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/utils/font_weight.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/desktop/dt_explore_button.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/mobile/explore_button.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DtArbitrageOpportunitiesWidget extends StatefulWidget {
  const DtArbitrageOpportunitiesWidget({super.key});

  @override
  State<DtArbitrageOpportunitiesWidget> createState() =>
      _ArbitrageOpportunitiesWidgetState();
}

class _ArbitrageOpportunitiesWidgetState
    extends State<DtArbitrageOpportunitiesWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(height: 64.h),
            GradientText(
              text: "Arbitrage Opportunities",
              style: AppStyle.bold_36,
              gradient: AppColor.buildGradient(),
            ),
            const SizedBox(height: 24.0),
            Text('Focus On Cryptocurrency Arbitrage Trading',
                style: AppStyle.semibold_18),
            const SizedBox(height: 12),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 336.w),
              child: Text(
                textAlign: TextAlign.center,
                'Identify the fluctuations of crypto pairs every second and filter out the crypto pairs with the best spreads. Using complex technological algorithms, the system will help customers have many trading opportunities with great profits',
                style: TextStyle(
                  color: AppColor.grey300,
                  fontSize: 14.0.sp,
                  fontWeight: regular,
                ),
              ),
            ),
            const SizedBox(height: 24.0),
            SizedBox(
              width: 768.w,
              height: 232,
              child: Stack(
                children: [
                  Column(
                    children: [
                      _buildCarouselSlider(),
                      const SizedBox(height: 12.0),
                      _buildCarouselSlider(reverse: false),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildLinearGradient(false),
                      buildLinearGradient(true)
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 24.0),
            DtExploreButton(
              onTap: () {},
            ),
            const SizedBox(height: 48)
          ],
        ),
        const CircleBlueBlur(
          top: 20,
        ),
        const CirclePinkBlur(
          top: 60,
        ),
      ],
    );
  }
}

Container buildLinearGradient(bool isRight) {
  return Container(
    height: 300,
    width: 98,
    decoration: BoxDecoration(
        gradient: AppColor.buildGradient(colors: [
      AppColor.c_09090C.withOpacity(isRight ? 0 : 1),
      AppColor.c_09090C.withOpacity(isRight ? 1 : 0),
    ])),
  );
}

Widget _buildCarouselSlider({bool? reverse}) {
  return CarouselSlider.builder(
    itemCount: 5,
    itemBuilder: (context, index, realIndex) {
      return ProfitCardCustom(
        title: 'USDT / LINK',
        profit: 1.5.toString(),
        leftIcon: Assets.icons.linkIcon.path,
        rightIcon: Assets.icons.linkIcon.path,
      );
    },
    options: CarouselOptions(
        aspectRatio: 7.8,
        initialPage: 0,
        viewportFraction: 0.27,
        disableCenter: true,
        enlargeCenterPage: false,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayAnimationDuration: const Duration(seconds: 1),
        autoPlayCurve: Curves.linear,
        scrollDirection: Axis.horizontal,
        reverse: reverse ?? true),
  );
}
