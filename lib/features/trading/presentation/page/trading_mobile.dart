import 'dart:async';

import 'package:do_an_flutter/core/components/appbar/app_bar_mobile.dart';
import 'package:do_an_flutter/core/components/bottombar/bottom_bar_custom.dart';
import 'package:do_an_flutter/core/components/card/gradient_container_custom.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/utils/scroll_utils.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/features/trading/presentation/widgets/mobile/trading_content_mobile.dart';
import 'package:do_an_flutter/features/trading/presentation/widgets/mobile/trading_header_mobile.dart';
import 'package:do_an_flutter/features/trading/presentation/widgets/mobile/trading_statistics_mobile_widget.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TradingMobile extends StatefulWidget {
  const TradingMobile({super.key});

  @override
  State<TradingMobile> createState() => _TradingMobileState();
}

class _TradingMobileState extends State<TradingMobile>
    with SingleTickerProviderStateMixin {
  final ScrollController _scrollControllerTop = ScrollController();
  final ScrollController _scrollControllerBottom = ScrollController();
  late TabController tabController;

  late Timer _timer;
  final List<String> _items = List.generate(20, (index) => 'Item $index');

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
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
  build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMobile(
        context,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              Assets.icons.historyIconSvg,
              width: 28.0.w,
              height: 28.0.h,
            ),
          ),
        ],
      ),
      body: const Column(
        children: [
          TradingHeaderMobileWidget(),
          TradingContentMobileWidget(),
        ],
      ),
      bottomNavigationBar: _buildCoinPriceBottomBar(),
    );
  }

  Widget _buildCoinPriceBottomBar() {
    return BottomBarCustom(
      height: 80.0.h,
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
      height: 25.h,
      width: MediaQuery.of(context).size.width,
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
}
