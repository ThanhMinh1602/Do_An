import 'package:do_an_flutter/core/components/button/custom_button.dart';
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
          _buildMenuItem(context, 'Home', 0),
          const SizedBox(width: 36.0),
          _buildMenuItem(context, 'How It Works', 1),
          const SizedBox(width: 36.0),
          _buildMenuItem(context, 'White Paper', 2),
          const SizedBox(width: 36.0),
          _buildMenuItem(context, 'Affiliate Program', 3),
          const SizedBox(width: 36.0),
          _buildMenuItem(context, 'News', 4),
          const SizedBox(width: 36.0),
          _buildMenuItem(context, 'Documents', 5),
          const SizedBox(width: 51),
          CustomButton(
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
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
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
