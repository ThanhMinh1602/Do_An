import 'package:do_an_flutter/core/components/button/custom_button.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class DtExploreButton extends StatelessWidget {
  final String? title;
  final Function? onTap;

  const DtExploreButton({super.key, this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      btnTxt: title ?? 'EXPLORE',
      width: title != null ? 174 : 153,
      height: 48,
      icon: Assets.icons.arrowRightFill.path,
      gradient: AppColor.buildGradient(),
      onTap: onTap,
    );
  }
}
