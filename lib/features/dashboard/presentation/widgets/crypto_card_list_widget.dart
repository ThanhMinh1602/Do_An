import 'package:do_an_flutter/core/components/card/gradient_container_custom.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CryptoCardListWidget extends StatelessWidget {
  const CryptoCardListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        separatorBuilder: (_, __) => spaceW12,
        itemBuilder: (context, index) {
          return GradientContainerCustom(
            width: 160.w,
            padding: EdgeInsets.all(16.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 8.0.w,
                      backgroundImage: const NetworkImage(
                          'https://cdn.pixabay.com/photo/2024/09/23/23/38/piggy-bank-9070156_960_720.jpg'),
                    ),
                    spaceW8,
                    Text('POL'.toUpperCase(),
                        style: AppStyle.regular_14
                            .copyWith(color: AppColor.whiteColor))
                  ],
                ),
                spaceH6,
                Text('12.397.45', style: AppStyle.semibold_20),
                spaceH2,
                Text('\$543,54', style: AppStyle.regular_14),
              ],
            ),
          );
        },
      ),
    );
  }
}
