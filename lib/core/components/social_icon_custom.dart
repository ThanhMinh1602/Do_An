import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({super.key});

  @override
  Widget build(BuildContext context) {
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
