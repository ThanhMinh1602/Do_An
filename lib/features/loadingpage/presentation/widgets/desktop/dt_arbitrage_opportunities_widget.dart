import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:do_an_flutter/core/components/blur/circle_blue_blur.dart';
import 'package:do_an_flutter/core/components/blur/circle_pink_blur.dart';
import 'package:do_an_flutter/core/components/card/profit_card_custom.dart';
import 'package:do_an_flutter/core/components/text/gradient_text.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/utils/font_weight.dart';
import 'package:do_an_flutter/core/utils/scroll_utils.dart';
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
  final ScrollController _scrollControllerTop = ScrollController();
  final ScrollController _scrollControllerBottom = ScrollController();

  late Timer _timer;
  final List<String> _items = List.generate(20, (index) => 'Item $index');

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(milliseconds: 200), (Timer timer) {
      ScrollUtils.autoScroll(_scrollControllerTop);
      ScrollUtils.autoScroll(_scrollControllerBottom);
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _scrollControllerTop.dispose();
    _scrollControllerBottom.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(height: 64.h),
            GradientText(
              text: "Arbitrage Opportunities",
              style: DesktopAppStyle.boldStyle_36,
              gradient: AppColor.buildGradient(),
            ),
            const SizedBox(height: 24.0),
            Text('Focus On Cryptocurrency Arbitrage Trading',
                style: DesktopAppStyle.semiboldStyle_18),
            const SizedBox(height: 12),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 336.w),
              child: Text(
                textAlign: TextAlign.center,
                'Identify the fluctuations of crypto pairs every second and filter out the crypto pairs with the best spreads. Using complex technological algorithms, the system will help customers have many trading opportunities with great profits',
                style: DesktopAppStyle.regularStyle_14,
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
                      _buildListAutoScroll(isTop: true),
                      const SizedBox(height: 12.0),
                      _buildListAutoScroll(isTop: false),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildLinearGradient(false),
                      _buildLinearGradient(true)
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

  Widget _buildListAutoScroll({required bool isTop}) {
    return SizedBox(
      height: 108,
      child: ListView.separated(
        controller: isTop ? _scrollControllerTop : _scrollControllerBottom,
        scrollDirection: Axis.horizontal,
        itemCount: _items.length * 2,
        reverse: isTop,
        separatorBuilder: (context, index) => const SizedBox(width: 16.0),
        itemBuilder: (context, index) {
          return ProfitCardCustom(
            width: 182.0,
            height: 108.0,
            titleStyle: DesktopAppStyle.regularStyle_12,
            fofitStyle:
                DesktopAppStyle.boldStyle_12.copyWith(color: AppColor.green500),
            margin: const EdgeInsets.symmetric(horizontal: 0),
            title: 'USDT / LINK',
            profit: 1.5.toString(),
            leftIcon: Assets.icons.linkIcon.path,
            rightIcon: Assets.icons.linkIcon.path,
          );
        },
      ),
    );
  }

  Container _buildLinearGradient(bool isRight) {
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
}
