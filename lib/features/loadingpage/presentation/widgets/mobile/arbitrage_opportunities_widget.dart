import 'package:carousel_slider/carousel_slider.dart';
import 'package:do_an_flutter/core/components/card/profit_card_custom.dart';
import 'package:do_an_flutter/core/components/text/gradient_text.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/utils/font_weight.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/mobile/explore_button.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArbitrageOpportunitiesWidget extends StatefulWidget {
  const ArbitrageOpportunitiesWidget({super.key});

  @override
  State<ArbitrageOpportunitiesWidget> createState() =>
      _ArbitrageOpportunitiesWidgetState();
}

class _ArbitrageOpportunitiesWidgetState
    extends State<ArbitrageOpportunitiesWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        spaceH48,
        GradientText(
          text: "Arbitrage ",
          style: AppStyle.textHeader,
          gradient: AppColor.buildGradient(),
        ),
        GradientText(
          text: "Opportunities ",
          style: AppStyle.textHeader,
          gradient: AppColor.buildGradient(),
        ),
        spaceH20,
        Text('Focus On Cryptocurrency Arbitrage Trading',
            style: TextStyle(
                fontSize: 18.0.sp,
                color: AppColor.whiteColor,
                fontWeight: FontWeight.bold)),
        spaceH24,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
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
        spaceH24,
        _buildCarouselSlider(),
        spaceH12,
        _buildCarouselSlider(reverse: false),
        spaceH24,
        ExploreButton(
          onTap: () {},
        ),
        spaceH48
      ],
    );
  }
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
        aspectRatio: 3.55,
        initialPage: 0,
        viewportFraction: 0.45,
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
