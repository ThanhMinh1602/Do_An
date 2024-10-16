import 'package:do_an_flutter/core/components/button/connect_wallet_button_custom.dart';
import 'package:do_an_flutter/core/components/button/custom_button.dart';
import 'package:do_an_flutter/core/components/pop_up_header.dart';
import 'package:do_an_flutter/core/components/text/gradient_text.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/utils/font_weight.dart';
import 'package:do_an_flutter/features/main/presentation/cubit/main_cubit.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class AppBarDesktop extends StatelessWidget implements PreferredSizeWidget {
  final int pageIndex;

  const AppBarDesktop({super.key, required this.pageIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      color: AppColor.blackColor.withOpacity(0.3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(Assets.icons.logo, width: 40.0, height: 40.0),
          const SizedBox(width: 154),
          ..._buildMenuItems(
              context), // Sử dụng spread operator để thêm các item menu
          const SizedBox(width: 51),
          _buildConnectWalletButton(context), // Gọi hàm để tạo nút kết nối ví
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
        padding: const EdgeInsets.symmetric(
            horizontal: 18.0), // Thay thế SizedBox bằng Padding
        child: _buildMenuItem(context, menuItems[index], index),
      );
    });
  }

  Widget _buildConnectWalletButton(BuildContext context) {
    return CustomButton(
      btnTxt: 'Connect Wallet',
      width: 134.0,
      height: 44.0,
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return Center(
              child: Container(
                width: 440,
                height: 372,
                decoration: BoxDecoration(
                  color: AppColor.grey900,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Column(
                  children: [
                    const PopUpHeader(),
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        children:
                            _buildConnectWalletButtons(), // Gọi hàm để tạo các nút kết nối ví
                      ),
                    ),
                  ],
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
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: semibold,
            ),
          ),
          if (isActive)
            Container(
              margin: const EdgeInsets.only(top: 2.0),
              height: 2.0,
              width: 30.0,
              decoration: BoxDecoration(gradient: AppColor.buildGradient()),
            ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 92.0);
}
