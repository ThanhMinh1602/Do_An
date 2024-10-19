import 'package:do_an_flutter/core/components/blur/custom_blur.dart';
import 'package:do_an_flutter/core/components/bottom_sheets/bottom_sheets_custom.dart';
import 'package:do_an_flutter/core/components/button/connect_wallet_button_custom.dart';
import 'package:do_an_flutter/core/components/button/custom_button.dart';
import 'package:do_an_flutter/core/components/pop_up_header.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AppBarMobile extends StatelessWidget implements PreferredSizeWidget {
  final BuildContext context;
  final List<Widget>? actions;

  const AppBarMobile(
    this.context, {
    super.key,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.appBarColor,
      leading: IconButton(
        onPressed: () => Scaffold.of(context).openDrawer(),
        icon: SvgPicture.asset(
          Assets.images.iconMenu,
          width: 28.0,
          height: 28.0,
        ),
      ),
      title: SvgPicture.asset(
        Assets.icons.logo,
        width: 36.0.w,
        height: 36.0.h,
      ),
      centerTitle: true,
      actions: [
        ...actions ??
            [
              CustomButton(
                btnTxt: 'Connect Wallet',
                width: 119.0.w,
                height: 34.0.h,
                textStyle: DesktopAppStyle.semibold_14
                    .copyWith(color: AppColor.primaryColor),
                margin:
                    EdgeInsets.symmetric(horizontal: 8.0.h, vertical: 8.0.w),
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
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 24, vertical: 20),
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
              ),
              // CustomButton(
              //   btnTxt: 'Connect Wallet',
              //   width: 128.0.w,
              //   height: 34.h,
              //   onTap: () => BottomSheetsCustom.showBottomSheet(
              //     context,
              //     height: 406.h,
              //     title: 'Wallet',
              //     child: Column(
              //       children: [
              //         ConnectWalletButtonCustom(
              //           iconPath: Assets.icons.metamaskIconSvg,
              //           text: 'Metamask',
              //         ),
              //         spaceH12,
              //         ConnectWalletButtonCustom(
              //           iconPath: Assets.icons.trustIconSvg,
              //           text: 'Trust Wallet',
              //         ),
              //         spaceH12,
              //         ConnectWalletButtonCustom(
              //           iconPath: Assets.icons.safepalIconSvg,
              //           text: 'Safepal',
              //         ),
              //         spaceH12,
              //         ConnectWalletButtonCustom(
              //           iconPath: Assets.icons.walletconnectIconSvg,
              //           text: 'WalletConnect',
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ],
        SizedBox(width: 16.0.w),
      ],
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
            style: DesktopAppStyle.semibold_16,
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

  @override
  Size get preferredSize => const Size(double.infinity, 64.0);
}
