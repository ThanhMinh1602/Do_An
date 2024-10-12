import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/utils/font_weight.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 40.0.h),
      decoration: BoxDecoration(gradient: AppColor.buildGradient(opacity: 0.1)),
      child: Column(
        children: [
          SvgPicture.asset(
            Assets.images.logo,
            width: 48.0.w,
            height: 48.0.w,
          ),
          spaceH32,
          const FooterLinks(),
          spaceH32,
          const SocialIcons(),
          spaceH24,
          Divider(color: AppColor.whiteColor.withOpacity(0.1)),
          spaceH24,
          const FooterLegal(),
          spaceH16,
          Text(
            '© 2024 Galaxy. All Rights Reserved.',
            style: TextStyle(
                fontSize: 16.0.sp,
                fontWeight: regular,
                color: AppColor.grey200),
          )
        ],
      ),
    );
  }
}

class FooterLinks extends StatelessWidget {
  const FooterLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 124.0.h,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FooterLinkText('White Paper'),
          FooterLinkText('Resources'),
          FooterLinkText('Project Introduction'),
          FooterLinkText('FAQ'),
        ],
      ),
    );
  }
}

class FooterLinkText extends StatelessWidget {
  final String text;
  const FooterLinkText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16.0.sp,
        color: AppColor.whiteColor,
        fontWeight: medium,
      ),
    );
  }
}

class SocialIcons extends StatelessWidget {
  const SocialIcons({super.key});

  @override
  Widget build(BuildContext context) {
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
}

class FooterLegal extends StatelessWidget {
  const FooterLegal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 201.w,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FooterLegalText('Privacy'),
          FooterLegalText('Disclaimer'),
          FooterLegalText('Legal'),
        ],
      ),
    );
  }
}

class FooterLegalText extends StatelessWidget {
  final String text;
  const FooterLegalText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14.0.sp,
        fontWeight: regular,
        color: AppColor.grey500,
      ),
    );
  }
}
