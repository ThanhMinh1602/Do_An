import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialIconsDesktop extends StatelessWidget {
  const SocialIconsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(Assets.icons.fbIcon, width: 32, height: 32),
        const SizedBox(width: 24),
        SvgPicture.asset(Assets.icons.instagramIcon, width: 32, height: 32),
        const SizedBox(width: 24),
        SvgPicture.asset(Assets.icons.telegramIcon, width: 32, height: 32),
        const SizedBox(width: 24),
        SvgPicture.asset(Assets.icons.xIcon, width: 32, height: 32),
        const SizedBox(width: 24),
        SvgPicture.asset(Assets.icons.mediumIcon, width: 32, height: 32),
        const SizedBox(width: 24),
      ],
    );
  }
}

class SocialIconsMobile extends StatelessWidget {
  const SocialIconsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(Assets.icons.fbIcon, width: 32, height: 32),
        spaceW16,
        SvgPicture.asset(Assets.icons.instagramIcon, width: 32, height: 32),
        spaceW16,
        SvgPicture.asset(Assets.icons.telegramIcon, width: 32, height: 32),
        spaceW16,
        SvgPicture.asset(Assets.icons.xIcon, width: 32, height: 32),
        spaceW16,
        SvgPicture.asset(Assets.icons.mediumIcon, width: 32, height: 32),
        spaceW16,
      ],
    );
  }
}
