import 'package:carousel_slider/carousel_slider.dart';
import 'package:do_an_flutter/core/components/blur/circle_blue_blur.dart';
import 'package:do_an_flutter/core/components/blur/circle_pink_blur.dart';
import 'package:do_an_flutter/core/components/card/card_custom.dart';
import 'package:do_an_flutter/core/components/card/model/information.dart';
import 'package:do_an_flutter/core/components/page_indicator_custom.dart';
import 'package:do_an_flutter/core/components/tabbar/tab_bar_custom.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/desktop/dt_explore_button.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/mobile/explore_button.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DtProtocoFlashLoansWidget extends StatefulWidget {
  const DtProtocoFlashLoansWidget({super.key});

  @override
  State<DtProtocoFlashLoansWidget> createState() =>
      _ProtocoFlashLoansWidgetState();
}

class _ProtocoFlashLoansWidgetState extends State<DtProtocoFlashLoansWidget>
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
    return Stack(
      children: [
        const CircleBlueBlur(
          top: 330.13,
        ),
        const CirclePinkBlur(
          top: 646.13,
        ),
        Column(
          children: [
            _buildTabbar(),
            const SizedBox(height: 24.0),
            IndexedStack(
              index: _currentIndex,
              children: [
                _buildProtocolView(),
                _buildFlashLoansView(),
              ],
            )
          ],
        ),
      ],
    );
  }

  Widget _buildTabbar() {
    return SizedBox(
      width: double.infinity,
      height: 252.0,
      child: Stack(
        children: [
          Image.asset(
            Assets.images.aaveBannerDesktop.path,
            width: double.infinity,
            height: 220,
            fit: BoxFit.cover,
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Center(
                child: CustomTabBar(
                  width: 420,
                  height: 60,
                  borderRadius: 100,
                  textStyle: DesktopAppStyle.semiboldStyle_24,
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
      padding: EdgeInsets.symmetric(horizontal: 288.0.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(
              Assets.images.protocolImg.path,
              width: 100,
            ),
          ),
          const SizedBox(height: 16.0),
          Text(
            'Introduce',
            textAlign: TextAlign.center,
            style: DesktopAppStyle.semiboldStyle_28,
          ),
          const SizedBox(height: 8.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 126.0),
            child: Text(
              'Aave Protocol is a decentralized finance (DeFi) platform that functions on the Ethereum blockchain and enables users to lend and borrow a diverse range of cryptocurrencies without any intermediaries. The platform uses smart contracts to facilitate peer-to-peer lending through an open-source protocol and allows users to earn interest on deposits or access loans.',
              textAlign: TextAlign.center,
              style: DesktopAppStyle.regularStyle_14,
            ),
          ),
          const SizedBox(height: 24.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _customCard(dataIndex: 0, height: 320),
              const SizedBox(width: 24.0),
              _customCard(dataIndex: 0, height: 320),
            ],
          ),
          const SizedBox(height: 24.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _customCard(dataIndex: 0, height: 254),
              const SizedBox(width: 24.0),
              _customCard(dataIndex: 0, height: 254),
            ],
          ),
          const SizedBox(height: 24.0),
          const SizedBox(height: 24.0),
          DtExploreButton(
            onTap: () {},
          ),
          const SizedBox(height: 24.0),
        ],
      ),
    );
  }

  CardCustom _customCard({
    required int dataIndex,
    required double height,
  }) {
    return CardCustom(
      imageWidth: 68.0,
      imageHeight: 48.0,
      padding: const EdgeInsets.all(24.0),
      margin: const EdgeInsets.all(0),
      titleContentSpace: 8.0,
      width: 381.0,
      height: height,
      titleStyle: DesktopAppStyle.boldStyle_20,
      contentStyle: DesktopAppStyle.regularStyle_14,
      blur: 100,
      title: protocls[dataIndex].title,
      content: protocls[dataIndex].content,
      image: protocls[dataIndex].imagePath,
    );
  }

  Widget _buildFlashLoansView() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 208),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 24.0),
          Image.asset(
            Assets.images.flashLoansImg.path,
            width: 342.0,
          ),
          const SizedBox(height: 24.0),
          Text(
            'Flash Loans',
            textAlign: TextAlign.center,
            style: DesktopAppStyle.semiboldStyle_28,
          ),
          const SizedBox(height: 8.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 126.0),
            child: Text(
              'Flash Loans are special transactions that allow the borrowing of an asset, as long as the borrowed amount (and a fee) is returned before the end of the transaction (also called One Block Borrows). These transactions do not require a user to supply collateral prior to engaging in the transaction. There is no real world analogy to Flash Loans, so it requires some basic understanding of how state is managed within blocks in blockchains.',
              textAlign: TextAlign.center,
              style: DesktopAppStyle.regularStyle_14,
            ),
          ),
          const SizedBox(height: 24.0),
          _buildFlashLoansGridView(),
          const SizedBox(height: 24.0),
          DtExploreButton(
            onTap: () {},
          ),
          const SizedBox(height: 24.0),
        ],
      ),
    );
  }

  Widget _buildFlashLoansGridView() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildCardItem(flashLoansIndex: 0),
            const SizedBox(width: 24.0),
            _buildCardItem(flashLoansIndex: 1),
            const SizedBox(width: 24.0),
            _buildCardItem(flashLoansIndex: 2)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildCardItem(flashLoansIndex: 3),
            const SizedBox(width: 24.0),
            _buildCardItem(flashLoansIndex: 4)
          ],
        )
      ],
    );
  }

  CardCustom _buildCardItem({required int flashLoansIndex}) {
    return CardCustom(
      width: 314.67,
      height: 186,
      margin: const EdgeInsets.all(0),
      titleStyle: DesktopAppStyle.boldStyle_20,
      contentStyle: DesktopAppStyle.regularStyle_14,
      title: flashLoans[flashLoansIndex].title,
      content: flashLoans[flashLoansIndex].content,
      image: '',
    );
  }
}
