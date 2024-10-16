import 'dart:async';

import 'package:do_an_flutter/core/components/background/background_custom.dart';
import 'package:do_an_flutter/core/components/bottombar/bottom_bar_custom.dart';
import 'package:do_an_flutter/core/components/button/custom_button.dart';
import 'package:do_an_flutter/core/components/card/gradient_container_custom.dart';
import 'package:do_an_flutter/core/components/gradient_icon_custom.dart';
import 'package:do_an_flutter/core/components/text/gradient_text.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/utils/dimensions.dart';
import 'package:do_an_flutter/core/utils/format_string_utils.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/components/appbar/app_bar_mobile.dart';
import '../../../../core/constants/app_color.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({super.key});

  @override
  State<DashboardWidget> createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  final ScrollController _scrollControllerTop = ScrollController();
  final ScrollController _scrollControllerBottom = ScrollController();
  late Timer _timer;
  final List<String> _items = List.generate(20, (index) => 'Item $index');

  @override
  void initState() {
    super.initState();

    // Khởi động timer để cuộn tự động cho cả hai danh sách
    _timer = Timer.periodic(const Duration(milliseconds: 200), (Timer timer) {
      _autoScroll(_scrollControllerTop);
      _autoScroll(_scrollControllerBottom);
    });
  }

  // Hàm cuộn tự động
  void _autoScroll(ScrollController controller) {
    if (controller.hasClients) {
      double maxScrollExtent = controller.position.maxScrollExtent;
      double currentScrollPosition = controller.position.pixels;

      if (currentScrollPosition >= maxScrollExtent) {
        controller.jumpTo(0.0); // Quay lại đầu danh sách khi đến cuối
      } else {
        controller.animateTo(
          currentScrollPosition + 10.0, // Điều chỉnh tốc độ cuộn
          duration: const Duration(milliseconds: 200),
          curve: Curves.linear,
        );
      }
    }
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
    return Scaffold(
      backgroundColor: AppColor.appBarColor,
      appBar: AppBarMobile(context),
      bottomNavigationBar: _buildCoinPriceBottomBar(),
      body: BackgroundCustom(
          child: ListView(
        children: [
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: Dimensions.paddingHorizontal)
                    .copyWith(
              top: Dimensions.paddingVertical,
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 24.0.w,
                  backgroundImage: const NetworkImage(
                      'https://cdn.pixabay.com/photo/2023/10/24/14/59/woman-8338390_1280.jpg'),
                ),
                spaceW12,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome',
                      style: AppStyle.regular_16,
                    ),
                    spaceH2,
                    Text(
                      FormatStringUtils.shortenString('0Xd3hdfgjajf36f7',
                          selectQuantityNumber: 3),
                      style: AppStyle.bold_24,
                    ),
                    spaceW12,
                  ],
                ),
                const Spacer(),
                CustomButton(
                  btnTxt: 'Top Up',
                  width: 90.w,
                  height: 36.h,
                )
              ],
            ),
          ),
          spaceH24,
          _buildListHoriz(),
          spaceH24,
          _buildRowChart(context),
          spaceH24,
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.paddingHorizontal,
            ),
            child: GradientText(
              textAlign: TextAlign.start,
              text: 'My Statistics',
              gradient: AppColor.buildGradient(),
              style: AppStyle.semibold_28,
            ),
          ),
          spaceH24,
          ListView.separated(
            padding:
                EdgeInsets.symmetric(horizontal: Dimensions.paddingHorizontal),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            separatorBuilder: (_, __) => spaceH12,
            itemBuilder: (context, index) {
              return GradientContainerCustom(
                  gradient: AppColor.buildGradient(opacity: 0.1),
                  borderRadius: BorderRadius.circular(54.r),
                  padding: EdgeInsets.all(16.0.w),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 20.h,
                        backgroundImage:
                            AssetImage(Assets.icons.totalTopUpIconPng.path),
                      ),
                      spaceW10,
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Total Top Up', style: AppStyle.semibold_16),
                            spaceH2,
                            Text(
                              'USDT',
                              style: AppStyle.regular_14
                                  .copyWith(color: AppColor.grey500),
                            ),
                          ],
                        ),
                      ),
                      spaceW8,
                      Text('12.397.45', style: AppStyle.semibold_20),
                      spaceW8,
                      CircleAvatar(
                        radius: 8.0.h,
                        backgroundColor: AppColor.whiteColor,
                        backgroundImage: AssetImage(Assets.icons.coinIcon.path),
                      )
                    ],
                  ));
            },
          )
        ],
      )),
    );
  }

  Widget _buildCoinPriceBottomBar() {
    return BottomBarCustom(
      padding: EdgeInsets.only(top: 16.0.h),
      child: Column(
        children: [
          _buildListCoinPrice(isTop: true),
          spaceH10,
          _buildListCoinPrice(isTop: false),
        ],
      ),
    );
  }

  SizedBox _buildListCoinPrice({required bool isTop}) {
    return SizedBox(
      height: 22.h,
      child: ListView.separated(
        controller: isTop ? _scrollControllerTop : _scrollControllerBottom,
        scrollDirection: Axis.horizontal,
        itemCount: _items.length * 2,
        reverse: isTop,
        separatorBuilder: (context, index) => spaceW8,
        itemBuilder: (context, index) => _buildCoinPrice(),
      ),
    );
  }

  GradientContainerCustom _buildCoinPrice() {
    return GradientContainerCustom(
      padding: EdgeInsets.symmetric(vertical: 4.0.h, horizontal: 12.0.w),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
                text: 'BTC: ',
                style:
                    AppStyle.regular_12.copyWith(color: AppColor.primaryColor)),
            TextSpan(text: '\$65.233,12', style: AppStyle.medium_12),
          ],
        ),
      ),
    );
  }

  Padding _buildRowChart(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Dimensions.paddingHorizontal,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Referral Link', style: AppStyle.regular_14),
          spaceH8,
          Row(
            children: [
              Expanded(
                  child: TextFormField(
                decoration: InputDecoration(
                  hintText:
                      'https://www.figma.com/design/2uIt2AaCFirYfYDqV5dR8K/%C4%90%E1%BB%93-%C3%A1n-(Copy)?node-id=38-11439&node-type=frame&t=CEtaLeve6Tyo3otG-0',
                  hintStyle:
                      AppStyle.regular_14.copyWith(color: AppColor.grey500),
                  filled: true,
                  fillColor: AppColor.grey900,
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 16.0.w, vertical: 10.0.h),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0.r),
                      borderSide:
                          BorderSide(color: AppColor.grey800!, width: 1)),
                ),
              )),
              spaceW12,
              GradientIconCustom(
                iconPath: Assets.icons.copyIconSvg,
                borderRadius: 10.0.r,
                width: 40.h,
                height: 40.h,
              ),
              spaceW12,
              GradientIconCustom(
                iconPath: Assets.icons.shareIconSvg,
                borderRadius: 10.0.r,
                width: 40.h,
                height: 40.h,
              ),
            ],
          ),
          spaceH24,
          SizedBox(
            width: double.infinity,
            height: 190.h,
            child: Row(
              children: [
                _buildCardChart(context,
                    svgChartPath: Assets.images.chart1,
                    title: 'Daily Funds Cap (USDT)',
                    subTitle: '12.397.45',
                    colors: [
                      AppColor.c_31D0D0.withOpacity(0.3),
                      AppColor.c_31D0D0.withOpacity(0.05),
                    ]),
                spaceW12,
                _buildCardChart(context,
                    svgChartPath: Assets.images.chart2,
                    title: 'Total Funds Cap (USDT)',
                    subTitle: '307.45',
                    colors: [
                      AppColor.c_DC349E.withOpacity(0.3),
                      AppColor.c_DC349E.withOpacity(0.05),
                    ]),
              ],
            ),
          )
        ],
      ),
    );
  }

  SizedBox _buildListHoriz() {
    return SizedBox(
      height: 100.h,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingHorizontal),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        separatorBuilder: (_, __) => spaceW12,
        itemBuilder: (context, index) {
          return GradientContainerCustom(
              width: 160.w,
              padding: EdgeInsets.all(16.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 8.0.w,
                        backgroundImage: const NetworkImage(
                            'https://cdn.pixabay.com/photo/2024/09/23/23/38/piggy-bank-9070156_960_720.jpg'),
                      ),
                      spaceW8,
                      Text('POL'.toUpperCase(),
                          style: AppStyle.regular_14
                              .copyWith(color: AppColor.whiteColor))
                    ],
                  ),
                  spaceH6,
                  Text('12.397.45', style: AppStyle.semibold_20),
                  spaceH2,
                  Text('\$543,54', style: AppStyle.regular_14),
                ],
              ));
        },
      ),
    );
  }

  Widget _buildCardChart(BuildContext context,
      {required String svgChartPath,
      required String title,
      required String subTitle,
      required List<Color> colors}) {
    return Expanded(
      child: GradientContainerCustom(
        height: 190.h,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: colors,
        ),
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: Dimensions.paddingHorizontal)
                      .copyWith(top: 20.0.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppStyle.regular_12.copyWith(
                      color: AppColor.grey300,
                    ),
                  ),
                  spaceH8,
                  Text(
                    subTitle,
                    overflow: TextOverflow.ellipsis,
                    style: AppStyle.semibold_28,
                  ),
                ],
              ),
            ),
            spaceH6,
            Expanded(
              child: SvgPicture.asset(
                svgChartPath,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            )
          ],
        ),
      ),
    );
  }
}
