import 'package:do_an_flutter/core/components/card/gradient_container_custom.dart';
import 'package:do_an_flutter/core/components/gradient_icon_custom.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/utils/dimensions.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DailyAndTotalFundsWidget extends StatelessWidget {
  const DailyAndTotalFundsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Dimensions.paddingHorizontal,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Referral Link', style: AppStyle.regular_14),
          spaceH8,
          Row(
            children: [
              Expanded(
                  child: TextFormField(
                decoration: InputDecoration(
                  hintText:
                      'https://www.figma.com/design/2uIt2AaCFirYfYDqV5dR8K/%C4%90%E1%BB%93-%C3%A1n-(Copy)?node-id=38-11439&node-type=frame&t=CEtaLeve6Tyo3otG-0',
                  hintStyle:
                      AppStyle.regular_14.copyWith(color: AppColor.grey500),
                  filled: true,
                  fillColor: AppColor.grey900,
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 16.0.w, vertical: 10.0.h),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0.r),
                      borderSide:
                          BorderSide(color: AppColor.grey800!, width: 1)),
                ),
              )),
              spaceW12,
              ...[
                _buildIconButton(Assets.icons.copyIconSvg),
                _buildIconButton(Assets.icons.shareIconSvg),
              ],
            ],
          ),
          spaceH24,
          SizedBox(
            width: double.infinity,
            height: 190.h,
            child: Row(
              children: [
                _buildCardChart(
                  context,
                  svgChartPath: Assets.images.chart1,
                  title: 'Daily Funds Cap (USDT)',
                  subTitle: '12.397.45',
                  colors: [
                    AppColor.c_31D0D0.withOpacity(0.3),
                    AppColor.c_31D0D0.withOpacity(0.05),
                  ],
                ),
                spaceW12,
                _buildCardChart(
                  context,
                  svgChartPath: Assets.images.chart2,
                  title: 'Total Funds Cap (USDT)',
                  subTitle: '307.45',
                  colors: [
                    AppColor.c_DC349E.withOpacity(0.3),
                    AppColor.c_DC349E.withOpacity(0.05),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildIconButton(String iconPath) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.0.w),
      child: GradientIconCustom(
        iconPath: iconPath,
        borderRadius: 10.0.r,
        width: 40.h,
        height: 40.h,
      ),
    );
  }

  Widget _buildCardChart(BuildContext context,
      {required String svgChartPath,
      required String title,
      required String subTitle,
      required List<Color> colors}) {
    return Expanded(
      child: GradientContainerCustom(
        height: 190.h,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: colors,
        ),
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: Dimensions.paddingHorizontal)
                      .copyWith(top: 20.0.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppStyle.regular_12.copyWith(
                      color: AppColor.grey300,
                    ),
                  ),
                  spaceH8,
                  Text(
                    subTitle,
                    overflow: TextOverflow.ellipsis,
                    style: AppStyle.semibold_28,
                  ),
                ],
              ),
            ),
            spaceH6,
            Expanded(
              child: SvgPicture.asset(
                svgChartPath,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            )
          ],
        ),
      ),
    );
  }
}
