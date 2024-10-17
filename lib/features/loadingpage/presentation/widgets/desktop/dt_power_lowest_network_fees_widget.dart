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
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/desktop/dt_explore_button.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/mobile/explore_button.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class DtPowerLowestNetworkFeesWidget extends StatefulWidget {
  const DtPowerLowestNetworkFeesWidget({super.key});

  @override
  State<DtPowerLowestNetworkFeesWidget> createState() =>
      _PowerLowestNetworkFeesWidgetState();
}

class _PowerLowestNetworkFeesWidgetState
    extends State<DtPowerLowestNetworkFeesWidget> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 46),
        SvgPicture.asset(Assets.images.polygon, width: 209.28, height: 44.0),
        const SizedBox(height: 12),
        GradientText(
          text: "The Power of\nLowest Network Fees",
          style: DesktopAppStyle.boldStyle_36,
          gradient: AppColor.buildGradient(),
        ),
        const SizedBox(height: 24.0),
        Stack(
          alignment: Alignment.center,
          children: [
            const CircleGradientBlur(
              width: 234,
              height: 234,
              blur: 200,
            ),
            _buildCarouselSlider()
          ],
        ),
        const SizedBox(height: 24.0),
        PageIndicatorCustom(
            pageController: PageController(initialPage: pageIndex),
            count: powerLowestNetworkFees.length),
        const SizedBox(height: 24.0),
        DtExploreButton(
          onTap: () {},
        ),
        spaceH48
      ],
    );
  }

  Widget _buildCarouselSlider() {
    return SizedBox(
      width: 860,
      height: 288,
      child: Stack(
        children: [
          CarouselSliderCustom(
            itemCount: powerLowestNetworkFees.length,
            height: 300.0,
            viewportFraction: 0.34,
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
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildLinearGradient(false),
              buildLinearGradient(true),
            ],
          )
        ],
      ),
    );
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

  Widget _buildCarouselItem(
      {required String title,
      required String content,
      required String iconPath}) {
    return Stack(
      children: [
        CardCustom(
          title: title,
          content: content,
          titleContentSpace: 12.0,
          padding: const EdgeInsets.symmetric(horizontal: 16.0)
              .copyWith(top: 40.0, bottom: 16.0),
          blur: 100,
          margin: const EdgeInsets.only(top: 24.0),
          titleStyle: DesktopAppStyle.boldStyle_20,
          contentStyle: DesktopAppStyle.regularStyle_14,
          height: 260,
          width: 300,
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: GradientIconCustom(
            iconPath: iconPath,
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
            height: 48,
            width: 64,
          ),
        )
      ],
    );
  }
}
