import 'package:do_an_flutter/core/components/card/gradient_container_custom.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/features/trading/data/card_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TradingListCardWidget extends StatelessWidget {
  const TradingListCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160.0.h, // Đảm bảo đủ chiều cao cho nhiều hàng.
      width: MediaQuery.of(context).size.width,
      child: GridView.builder(
        padding: EdgeInsets.all(20.0.w),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Mỗi hàng chứa 2 item.
          crossAxisSpacing: 12.0.w, // Khoảng cách ngang giữa các item.
          mainAxisSpacing: 12.0.h, // Khoảng cách dọc giữa các hàng.
          childAspectRatio: 173.0 / 72.0, // Tỷ lệ chiều rộng / chiều cao.
        ),
        itemCount: cards.length,
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
