import 'package:carousel_slider/carousel_slider.dart';
import 'package:do_an_flutter/core/components/card/card_custom.dart';
import 'package:do_an_flutter/core/components/card/model/information.dart';
import 'package:do_an_flutter/core/components/page_indicator_custom.dart';
import 'package:do_an_flutter/core/components/tabbar/tab_bar_custom.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/explore_button.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProtocoFlashLoansWidget extends StatefulWidget {
  const ProtocoFlashLoansWidget({super.key});

  @override
  State<ProtocoFlashLoansWidget> createState() =>
      _ProtocoFlashLoansWidgetState();
}

class _ProtocoFlashLoansWidgetState extends State<ProtocoFlashLoansWidget>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int _currentIndex = 0;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {
      setState(() {
        _currentIndex = tabController.index;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTabbar(),
        spaceH24,
        IndexedStack(
          index: _currentIndex,
          children: [
            _buildProtocolView(),
            _buildFlashLoansView(),
          ],
        )
      ],
    );
  }

  Widget _buildTabbar() {
    return SizedBox(
      width: double.infinity,
      height: 182.w,
      child: Stack(
        children: [
          Image.asset(
            Assets.images.aaveBanner.path,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Center(
                child: CustomTabBar(
                  controller: tabController,
                  tabs: const ['Protoco', 'Flash Loans'],
                ),
              )),
        ],
      ),
    );
  }

  Widget _buildProtocolView() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.0.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0.r),
            child: Image.asset(
              Assets.images.protocolImg.path,
              width: 100.w,
            ),
          ),
          spaceH16,
          Text(
            'Introduce',
            textAlign: TextAlign.center,
            style: AppStyle.textTitle,
          ),
          spaceH8,
          Text(
            'Aave Protocol is a decentralized '
            'finance (DeFi) platform that functions '
            'on the Ethereum blockchain and enables '
            'users to lend and borrow a diverse range '
            'of cryptocurrencies without any intermediaries. '
            'The platform uses smart contracts to facilitate '
            'peer-to-peer lending through an open-source '
            'protocol and allows users to earn interest on '
            'deposits or access loans.',
            textAlign: TextAlign.center,
            style: AppStyle.textContent,
          ),
          spaceH24,
          _buildProtocolCarouselSlider(),
          spaceH24,
          PageIndicatorCustom(
              pageController: PageController(), count: protocls.length),
          spaceH24,
          ExploreButton(
            onTap: () {},
          ),
          spaceH24
        ],
      ),
    );
  }

  Widget _buildFlashLoansView() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.0.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          spaceH24,
          Image.asset(
            Assets.images.flashLoansImg.path,
          ),
          spaceH24,
          Text(
            'Flash Loans',
            textAlign: TextAlign.center,
            style: AppStyle.textTitle,
          ),
          SizedBox(height: 8.0.h),
          Text(
            'Flash loans are uncollateralized loans that must be repaid '
            'within the same transaction. They enable users to borrow '
            'assets instantly without any collateral, as long as the '
            'liquidation happens in the same transaction.',
            textAlign: TextAlign.center,
            style: AppStyle.textContent,
          ),
          spaceH24,
          _buildFlashLoansCarouselSlider(),
          spaceH24,
          PageIndicatorCustom(
              pageController: PageController(), count: flashLoans.length),
          spaceH24,
          ExploreButton(
            onTap: () {},
          ),
          spaceH24
        ],
      ),
    );
  }

  Widget _buildProtocolCarouselSlider() {
    return CarouselSlider.builder(
      itemCount: protocls.length,
      itemBuilder: (context, index, realIndex) {
        final data = protocls[index];
        return CardCustom(
          title: data.title,
          content: data.content,
          image: data.imagePath,
          margin: EdgeInsets.symmetric(horizontal: 8.0.w),
        );
      },
      options: CarouselOptions(
        aspectRatio: 0.77,
        initialPage: 0,
        viewportFraction: 0.8,
        disableCenter: true,
        enlargeCenterPage: true,
        enlargeFactor: 0,
        enableInfiniteScroll: true,
        scrollDirection: Axis.horizontal,
        autoPlay: true,
        autoPlayAnimationDuration: const Duration(seconds: 1),
        autoPlayCurve: Curves.linear,
      ),
    );
  }

  Widget _buildFlashLoansCarouselSlider() {
    return CarouselSlider.builder(
      itemCount: flashLoans.length,
      itemBuilder: (context, index, realIndex) {
        final data = flashLoans[index];
        return CardCustom(
          title: data.title,
          content: data.content,
          image: '',
        );
      },
      options: CarouselOptions(
        aspectRatio: 1.15,
        initialPage: 0,
        viewportFraction: 0.65,
        disableCenter: true,
        enlargeCenterPage: true,
        enlargeFactor: 0.25,
        enableInfiniteScroll: true,
        scrollDirection: Axis.horizontal,
        autoPlay: true,
        autoPlayAnimationDuration: const Duration(seconds: 1),
        autoPlayCurve: Curves.linear,
      ),
    );
  }
}
