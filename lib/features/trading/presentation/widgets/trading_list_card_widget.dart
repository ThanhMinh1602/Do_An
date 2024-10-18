import 'package:do_an_flutter/core/components/card/crypto_pair_custom.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/utils/font_weight.dart';
import 'package:do_an_flutter/features/trading/data/arbitrage_opportunities_model.dart';
import 'package:do_an_flutter/features/trading/data/card_model.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';

class TradingListCardWidget extends StatelessWidget {
  const TradingListCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final gradient = AppColor.buildGradient(opacity: 0.1);
    return SizedBox(
      height: MediaQuery.of(context).size.height * 1.5,
      width: MediaQuery.of(context).size.width,
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 20.0.h),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12.0.w,
          mainAxisSpacing: 16.0.h,
          childAspectRatio: 173 / 100,
        ),
        itemCount: arbitrageOpportunitiesList.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(vertical: 6.0.h, horizontal: 12.0.w),
            decoration: BoxDecoration(
              gradient: gradient,
              borderRadius: BorderRadius.circular(20.0.r),
              border: GradientBoxBorder(gradient: gradient),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  arbitrageOpportunitiesList[index].title,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: regular,
                    color: AppColor.whiteColor,
                  ),
                ),
                spaceH4,
                CryptoPairCustom(
                  leftIcon: arbitrageOpportunitiesList[index].leftIconPath,
                  rightIcon: arbitrageOpportunitiesList[index].rightIconPath,
                ),
                spaceH4,
                Text(
                  arbitrageOpportunitiesList[index].profit,
                  style: AppStyle.bold_12,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
