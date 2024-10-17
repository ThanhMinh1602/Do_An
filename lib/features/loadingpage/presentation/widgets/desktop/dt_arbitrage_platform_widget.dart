import 'package:do_an_flutter/core/components/card/model/information.dart';
import 'package:do_an_flutter/core/components/gradient_icon_custom.dart';
import 'package:do_an_flutter/core/components/social_icon_custom.dart';
import 'package:do_an_flutter/core/components/text/gradient_text.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/utils/font_weight.dart';
import 'package:do_an_flutter/core/utils/desktop_space.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/desktop/dt_explore_button.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class DtArbitragePlatformWidget extends StatelessWidget {
  final Function onTapJoinNow;
  const DtArbitragePlatformWidget({super.key, required this.onTapJoinNow});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 208.w).copyWith(top: 92.0),
      child: Column(
        children: [
          _buildTitle(),
          dtSpaceH28,
          _buildBanner(),
          dtSpaceH24,
          dtSpaceH64,
          SizedBox(
            height: 222.0,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              separatorBuilder: (context, index) => dtSpaceW24,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 222.0,
                  width: 226,
                  child: Stack(
                    children: [
                      _buildGridCard(index),
                      _buildGridIcon(index),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _buildGridIcon(int index) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: GradientIconCustom(
        iconPath: profileUtils[index].imagePath,
        padding: const EdgeInsets.all(14.77),
        width: 64,
        height: 64,
      ),
    );
  }

  Widget _buildGridCard(int index) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      top: 38,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColor.backgroundColor),
          ),
          Positioned.fill(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24.0)
                  .copyWith(top: 44.0, bottom: 24.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(colors: [
                  AppColor.c_31D0D0.withOpacity(0.1),
                  AppColor.c_DC349E.withOpacity(0.1),
                ]),
                border: GradientBoxBorder(
                  gradient: LinearGradient(
                    colors: [
                      AppColor.c_31D0D0.withOpacity(0.2),
                      AppColor.c_DC349E.withOpacity(0.2),
                    ],
                  ),
                  width: 1,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                      textAlign: TextAlign.center,
                      profileUtils[index].title,
                      style: const TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 18.0,
                        fontWeight: semibold,
                        height: 24.0 / 18.0,
                        letterSpacing: -0.04,
                      )),
                  dtSpaceH6,
                  Text(
                      textAlign: TextAlign.center,
                      profileUtils[index].content,
                      maxLines: 4,
                      style: const TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: regular,
                          height: 20.0 / 16.0,
                          letterSpacing: 0))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Column(
      children: [
        GradientText(
          text: "The World’s Best Arbitrage Platform",
          style: DesktopAppStyle.semiboldText_56,
          gradient: AppColor.buildGradient(),
        ),
        dtSpaceH16,
        Text(
          "Automated Operation By Smart Contract",
          textAlign: TextAlign.center,
          style:DesktopAppStyle.mediumStyle_28,
        ),
        dtSpaceH24,
        DtExploreButton(
          title: 'Join Now',
          onTap: onTapJoinNow,
        ),
        dtSpaceH28,
        const SocialIcons(),
      ],
    );
  }

  Widget _buildBanner() {
    return Image.asset(
      Assets.images.desktopBanner.path,
      width: 818.06,
      height: 400.0,
    );
  }
}
