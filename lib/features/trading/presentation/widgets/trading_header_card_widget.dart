import 'package:do_an_flutter/core/components/card/gradient_container_custom.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/features/trading/data/card_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TradingHeaderCardWidget extends StatelessWidget {
  const TradingHeaderCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72.0.h,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(20.0.w),
        itemCount: cards.length,
        separatorBuilder: (_, __) => spaceW12,
        itemBuilder: (context, index) {
          return GradientContainerCustom(
            height: 72.0.h,
            width: 173.0.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                spaceH8,
                Row(
                  children: [
                    spaceW20,
                    Text(
                      cards[index].title,
                      style: AppStyle.regular_12_grey300,
                    ),
                  ],
                ),
                Row(
                  children: [
                    spaceW20,
                    Text(
                      cards[index].price,
                      style: AppStyle.semibold_20,
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
