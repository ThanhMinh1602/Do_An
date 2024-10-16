import 'package:do_an_flutter/core/components/card/card_custom.dart';
import 'package:do_an_flutter/core/components/card/model/information.dart';
import 'package:do_an_flutter/core/components/carousel_slider/carousel_slider_custom.dart';
import 'package:do_an_flutter/core/components/blur/circle_gradient_blur.dart';
import 'package:do_an_flutter/core/components/gradient_icon_custom.dart';
import 'package:do_an_flutter/core/components/page_indicator_custom.dart';
import 'package:do_an_flutter/core/components/text/gradient_text.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/mobile/explore_button.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class PowerLowestNetworkFeesWidget extends StatefulWidget {
  const PowerLowestNetworkFeesWidget({super.key});

  @override
  State<PowerLowestNetworkFeesWidget> createState() =>
      _PowerLowestNetworkFeesWidgetState();
}

class _PowerLowestNetworkFeesWidgetState
    extends State<PowerLowestNetworkFeesWidget> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        spaceH46,
        SvgPicture.asset(
          Assets.images.polygon,
          width: 171.23.w,
        ),
        spaceH12,
        GradientText(
          text: "The Power of\nLowest Network Fees",
          style: AppStyle.textHeader,
          gradient: AppColor.buildGradient(),
        ),
        spaceH24,
        Stack(
          children: [
            const Positioned.fill(child: CircleGradientBlur()),
            _buildCarouselSlider()
          ],
        ),
        spaceH24,
        PageIndicatorCustom(
            pageController: PageController(initialPage: pageIndex),
            count: powerLowestNetworkFees.length),
        spaceH24,
        ExploreButton(
          onTap: () {},
        ),
        spaceH48
      ],
    );
  }

  Widget _buildCarouselSlider() {
    return CarouselSliderCustom(
      itemCount: powerLowestNetworkFees.length,
      aspectRatio: 1.15,
      viewportFraction: 0.7,
      onPageChanged: (index, reason) {
        pageIndex = index;
        setState(() {});
      },
      itemBuilder: (context, index, realIndex) {
        final data = powerLowestNetworkFees[index];
        return _buildCarouselItem(
          iconPath: data.imagePath,
          title: data.title,
          content: data.content,
        );
      },
    );
  }

  Widget _buildCarouselItem(
      {required String title,
      required String content,
      required String iconPath}) {
    return Stack(
      children: [
        CardCustom(
          title: title,
          content: content,
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: GradientIconCustom(
            iconPath: iconPath,
            padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 8.0.h),
            height: 40.0.h,
            width: 56.0.w,
          ),
        )
      ],
    );
  }
}
