import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DtTrustedByTeamsAtWidget extends StatelessWidget {
  const DtTrustedByTeamsAtWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Trusted By Teams At',
          style: AppStyle.bold_20,
        ),
        const SizedBox(height: 16.0),
        Container(
          width: 786.0,
          padding: const EdgeInsets.all(24.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              gradient: AppColor.buildGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColor.whiteColor.withOpacity(0.05),
                    AppColor.whiteColor.withOpacity(0.02)
                  ])),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(Assets.images.centrifugeSvg, height: 48),
                  const SizedBox(width: 32),
                  SvgPicture.asset(Assets.images.fireblocksSvg, height: 48),
                  const SizedBox(width: 32),
                  SvgPicture.asset(Assets.images.consensysSvg, height: 48),
                ],
              ),
              spaceH18,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(Assets.images.jpMorganChaseSvg, height: 48),
                  const SizedBox(width: 32),
                  SvgPicture.asset(Assets.images.masSvg, height: 48),
                  const SizedBox(width: 32),
                  SvgPicture.asset(Assets.images.bancoCentral, height: 48),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 64)
      ],
    );
  }
}
