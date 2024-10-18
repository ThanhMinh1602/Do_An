import 'dart:async';

import 'package:do_an_flutter/core/components/background/background_custom.dart';
import 'package:do_an_flutter/core/components/bottombar/bottom_bar_custom.dart';
import 'package:do_an_flutter/core/components/card/gradient_container_custom.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/utils/dimensions.dart';
import 'package:do_an_flutter/core/utils/scroll_utils.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/features/dashboard/presentation/widgets/crypto_card_list_widget.dart';
import 'package:do_an_flutter/features/dashboard/presentation/widgets/daily_and_total_funds_widget.dart';
import 'package:do_an_flutter/features/dashboard/presentation/widgets/header_widget.dart';
import 'package:do_an_flutter/features/dashboard/presentation/widgets/my_statistics_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/app_color.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({super.key});

  @override
  State<DashboardWidget> createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget>
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      bottomNavigationBar: _buildCoinPriceBottomBar(),
      body: BackgroundCustom(
        child: ListView(
          padding:
              EdgeInsets.symmetric(horizontal: Dimensions.paddingHorizontal),
          children: [
            const HeaderWidget(),
            spaceH24,
            const CryptoCardListWidget(),
            spaceH24,
            const DailyAndTotalFundsWidget(),
            spaceH24,
            const MyStatisticsWidget(),
          ],
        ),
      ),
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
}
