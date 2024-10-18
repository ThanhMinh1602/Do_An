import 'dart:ui';

import 'package:do_an_flutter/core/components/blur/custom_blur.dart';
import 'package:do_an_flutter/core/components/button/connect_wallet_button_custom.dart';
import 'package:do_an_flutter/core/components/button/custom_button.dart';
import 'package:do_an_flutter/core/components/pop_up_header.dart';
import 'package:do_an_flutter/core/components/text/gradient_text.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/extensions/builder_context_extension.dart';
import 'package:do_an_flutter/core/utils/font_weight.dart';
import 'package:do_an_flutter/features/main/presentation/cubit/main_cubit.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class AppBarDesktop extends StatelessWidget {
  final int pageIndex;

  const AppBarDesktop({super.key, required this.pageIndex});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.getWidth,
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      color: Colors.black.withOpacity(0.3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(Assets.icons.logo, width: 40.0, height: 40.0),
          const SizedBox(width: 154),
          ..._buildMenuItems(context),
          const SizedBox(width: 51),
          _buildConnectWalletButton(context),
        ],
      ),
    );
  }

  List<Widget> _buildMenuItems(BuildContext context) {
    final menuItems = [
      'Home',
      'How It Works',
      'White Paper',
      'Affiliate Program',
      'News',
      'Documents',
    ];

    return List<Widget>.generate(menuItems.length, (index) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: _buildMenuItem(context, menuItems[index], index),
      );
    });
  }

  Widget _buildConnectWalletButton(BuildContext context) {
    return CustomButton(
      btnTxt: 'Connect Wallet',
      width: 143.0,
      height: 44.0,
      textStyle: DesktopAppStyle.semiboldStyle_14
          .copyWith(color: AppColor.primaryColor),
      borderGradient: AppColor.buildGradient(opacity: 0.3),
      gradient: AppColor.buildGradient(opacity: 0.2),
      onTap: () {
        showDialog(
          context: context,
          barrierColor: AppColor.blackColor.withOpacity(0.7),
          builder: (context) {
            return CustomBlur(
              blur: 10,
              child: Center(
                child: Container(
                  width: 440,
                  height: 400,
                  decoration: BoxDecoration(
                    color: AppColor.grey900,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Column(
                    children: [
                      const PopUpHeader(
                        title: 'Connect a wallet',
                        padding:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                        isDeskTop: true,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          children: _buildConnectWalletButtons(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  List<Widget> _buildConnectWalletButtons() {
    final wallets = [
      {'icon': Assets.icons.metamaskIconSvg, 'text': 'Metamask'},
      {'icon': Assets.icons.trustIconSvg, 'text': 'Trust Wallet'},
      {'icon': Assets.icons.safepalIconSvg, 'text': 'Safepal'},
      {'icon': Assets.icons.walletconnectIconSvg, 'text': 'WalletConnect'},
    ];

    return wallets.map((wallet) {
      return Column(
        children: [
          ConnectWalletButtonCustom(
            iconHeight: 32,
            iconWidth: 32,
            style: DesktopAppStyle.semiboldStyle_16,
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            iconPath: wallet['icon']!,
            text: wallet['text']!,
          ),
          const SizedBox(height: 12),
        ],
      );
    }).toList();
  }

  Widget _buildMenuItem(BuildContext context, String text, int index) {
    final isActive = pageIndex == index;

    return GestureDetector(
      onTap: () {
        context.read<MainCubit>().onChangePage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GradientText(
            text: text,
            gradient: isActive
                ? AppColor.buildGradient()
                : AppColor.buildGradient(
                    colors: [AppColor.whiteColor, AppColor.whiteColor]),
            style: DesktopAppStyle.semiboldStyle_14,
          ),
          if (isActive)
            Container(
              height: 2.0,
              width: 30.0,
              decoration: BoxDecoration(gradient: AppColor.buildGradient()),
            ),
        ],
      ),
    );
  }
}
