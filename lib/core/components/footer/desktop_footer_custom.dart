import 'package:do_an_flutter/core/components/social_icon_custom.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/utils/font_weight.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DesktopFooterCustom extends StatelessWidget {
  const DesktopFooterCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 208.0.w, vertical: 40.0),
      decoration: BoxDecoration(gradient: AppColor.buildGradient(opacity: 0.1)),
      child: Column(
        children: [
          SvgPicture.asset(
            Assets.icons.logo,
            width: 48.0.w,
            height: 48.0.w,
          ),
          const SizedBox(height: 32),
          const FooterLinks(),
          const SizedBox(height: 32),
          const SocialIcons(),
          const SizedBox(height: 24),
          Divider(color: AppColor.whiteColor.withOpacity(0.1)),
          const SizedBox(height: 24),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              '© 2024 Galaxy. All Rights Reserved.',
              style: TextStyle(
                  fontSize: 16.0.sp,
                  fontWeight: regular,
                  color: AppColor.grey200),
            ),
            const FooterLegal()
          ]),
        ],
      ),
    );
  }
}

class FooterLinks extends StatelessWidget {
  const FooterLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FooterLinkText('White Paper'),
        SizedBox(width: 32.0),
        FooterLinkText('Resources'),
        SizedBox(width: 32.0),
        FooterLinkText('Project Introduction'),
        SizedBox(width: 32.0),
        FooterLinkText('FAQ'),
      ],
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
