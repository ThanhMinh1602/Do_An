import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SocialIcons extends StatelessWidget {
  final bool isDesktop;
  const SocialIcons({super.key, required this.isDesktop});

  @override
  Widget build(BuildContext context) {
    return isDesktop ? _builSocialIconDesktop() : _buildSocialIconMoble();
  }

  Row _builSocialIconDesktop() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(Assets.icons.fbIcon, width: 48, height: 48),
        const SizedBox(width: 24),
        SvgPicture.asset(Assets.icons.instagramIcon, width: 48, height: 48),
        const SizedBox(width: 24),
        SvgPicture.asset(Assets.icons.telegramIcon, width: 48, height: 48),
        const SizedBox(width: 24),
        SvgPicture.asset(Assets.icons.xIcon, width: 48, height: 48),
        const SizedBox(width: 24),
        SvgPicture.asset(Assets.icons.mediumIcon, width: 48, height: 48),
        const SizedBox(width: 24),
      ],
    );
  }
}

SizedBox _buildSocialIconMoble() {
  return SizedBox(
    width: 236.h,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(Assets.icons.fbIcon, width: 32.0.w, height: 32.0.h),
        SvgPicture.asset(Assets.icons.instagramIcon,
            width: 32.0.w, height: 32.0.h),
        SvgPicture.asset(Assets.icons.telegramIcon,
            width: 32.0.w, height: 32.0.h),
        SvgPicture.asset(Assets.icons.xIcon, width: 32.0.w, height: 32.0.h),
        SvgPicture.asset(Assets.icons.mediumIcon,
            width: 32.0.w, height: 32.0.h),
      ],
    ),
  );
}
