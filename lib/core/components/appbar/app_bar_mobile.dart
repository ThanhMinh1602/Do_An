import 'package:do_an_flutter/core/components/bottom_sheets/bottom_sheets_custom.dart';
import 'package:do_an_flutter/core/components/button/connect_wallet_button_custom.dart';
import 'package:do_an_flutter/core/components/button/custom_button.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
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
      backgroundColor: const Color(0xff141414),
      leading: IconButton(
        onPressed: () => Scaffold.of(context).openDrawer(),
        icon: SvgPicture.asset(
          Assets.images.iconMenu,
          width: 28.0.w,
          height: 28.0.w,
        ),
      ),
      title: SvgPicture.asset(
        Assets.icons.logo,
        width: 36.0.w,
        height: 36.0.w,
      ),
      centerTitle: true,
      actions: [
        ...actions ??
            [
              CustomButton(
                btnTxt: 'Connect Wallet',
                borderGradient: AppColor.buildGradient(opacity: 0.3),
                gradient: AppColor.buildGradient(opacity: 0.2),
                width: 128.0.w,
                height: 24.h,
                onTap: () => BottomSheetsCustom.showBottomSheet(
                  context,
                  height: 406.h,
                  title: 'Wallet',
                  child: Column(
                    children: [
                      ConnectWalletButtonCustom(
                        iconPath: Assets.icons.metamaskIconSvg,
                        text: 'Metamask',
                      ),
                      spaceH12,
                      ConnectWalletButtonCustom(
                        iconPath: Assets.icons.trustIconSvg,
                        text: 'Trust Wallet',
                      ),
                      spaceH12,
                      ConnectWalletButtonCustom(
                        iconPath: Assets.icons.safepalIconSvg,
                        text: 'Safepal',
                      ),
                      spaceH12,
                      ConnectWalletButtonCustom(
                        iconPath: Assets.icons.walletconnectIconSvg,
                        text: 'WalletConnect',
                      ),
                    ],
                  ),
                ),
              ),
            ],
        SizedBox(width: 16.0.w),
      ],
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 64.0);
}
