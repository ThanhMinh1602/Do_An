import 'package:do_an_flutter/core/components/bottom_sheets/bottom_sheets_custom.dart';
import 'package:do_an_flutter/core/components/button/custom_button.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  final BuildContext context;
  final List<Widget>? actions;

  const AppBarCustom(
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
                width: 128.0.w,
                height: 34.h,
                onTap: () => BottomSheetsCustom.bottomSheet(
                  context,
                  child: Column(
                    children: [
                      _buildWalletButton(
                        iconPath: Assets.icons.metamaskIconSvg,
                        text: 'Metamask',
                      ),
                      spaceH12,
                      _buildWalletButton(
                        iconPath: Assets.icons.trustIconSvg,
                        text: 'Trust Wallet',
                      ),
                      spaceH12,
                      _buildWalletButton(
                        iconPath: Assets.icons.safepalIconSvg,
                        text: 'Safepal',
                      ),
                      spaceH12,
                      _buildWalletButton(
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

  Widget _buildWalletButton({
    void Function()? onTap,
    required String iconPath,
    required String text,
  }) {
    return OutlineGradientButton(
      onTap: onTap,
      strokeWidth: 1.0,
      radius: Radius.circular(12.0.r),
      padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 12.0.h),
      gradient: AppColor.buildGradient(opacity: 0.2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            iconPath,
            width: 32.0.w,
            height: 32.0.h,
          ),
          Text(
            text,
            style: AppStyle.semibold_16,
          ),
          SizedBox(
            width: 32.0.w,
            height: 32.0.h,
          ),
        ],
      ),
    );
  }
}
