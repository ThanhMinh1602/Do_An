import 'dart:async';

import 'package:do_an_flutter/core/components/button/page_navigation_button.dart';
import 'package:do_an_flutter/core/components/card/model/information.dart';
import 'package:do_an_flutter/core/components/circle_gradient_blur.dart';
import 'package:do_an_flutter/core/components/container_custom_paint.dart';
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
class GetInstantProfitsWidget extends StatefulWidget {
  const GetInstantProfitsWidget({super.key});

  @override
  State<GetInstantProfitsWidget> createState() =>
      _GetInstantProfitsWidgetState();
}

class _GetInstantProfitsWidgetState extends State<GetInstantProfitsWidget> {
  late PageController pageController;
  late Timer timer;
  int currentPage = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
    timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (currentPage < instantProfits.length - 1) {
        currentPage++;
      } else {
        currentPage = 0;
      }
      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    timer.cancel();
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      height: screenHeight,
      width: screenWidth,
      child: PageView.builder(
          controller: pageController,
          itemCount: instantProfits.length,
          itemBuilder: (context, index) {
            return _buildPageWidget(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                imagePath: instantProfits[index].imagePath,
                title: instantProfits[index].title,
                content: instantProfits[index].content);
          }),
    );
  }

  Widget _buildPageWidget(
      {required double screenWidth,
      required double screenHeight,
      required String imagePath,
      required String title,
      required String content}) {
    return Container(
      padding: EdgeInsets.only(top: 46.0.h),
      child: Stack(
        children: [
          Positioned(
            top: 162.87.h,
            left: 0,
            right: 0,
            child: const CircleGradientBlur(),
          ),
          Positioned(
            left: 0,
            right: 0,
            child: Column(
              children: [
                GradientText(
                  text: "Get Instant Profits At",
                  style: AppStyle.textHeader,
                  gradient: AppColor.buildGradient(),
                ),
                spaceH12,
                SvgPicture.asset(
                  Assets.images.metamaskSeeklogo,
                  width: 203.66.w,
                ),
                spaceH24,
                Image.asset(
                  imagePath,
                  width: 358.0.w,
                  height: 242.h,
                  fit: BoxFit.fill,
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ContainerCustomPaint(
              width: screenWidth,
              height: (screenHeight < 700)
                  ? screenHeight * 0.56
                  : screenHeight * 0.5,
              child: Row(
                children: [
                  const PageNavigationButton(),
                  spaceW30,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        spaceH36,
                        Text(title,
                            textAlign: TextAlign.center,
                            style: (screenHeight < 700)
                                ? AppStyle.semibold_20
                                : AppStyle.textTitle),
                        SizedBox(height: 8.0.h),
                        Text(
                          content,
                          textAlign: TextAlign.center,
                          style: (screenHeight < 700)
                              ? AppStyle.textContentScreenHeight700
                              : AppStyle.regular_14,
                        ),
                        const Spacer(),
                        PageIndicatorCustom(
                          pageController: pageController,
                          count: instantProfits.length,
                        ),
                        spaceH24,
                        ExploreButton(
                          onTap: () {},
                        ),
                        SizedBox(height: 52.0.h)
                      ],
                    ),
                  ),
                  spaceW30,
                  const PageNavigationButton(
                    isRight: true,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
