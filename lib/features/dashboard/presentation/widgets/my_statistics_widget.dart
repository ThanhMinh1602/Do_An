import 'package:do_an_flutter/core/components/card/gradient_container_custom.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyStatisticsWidget extends StatelessWidget {
  const MyStatisticsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      separatorBuilder: (_, __) => spaceH12,
      itemBuilder: (context, index) {
        return GradientContainerCustom(
          gradient: AppColor.buildGradient(opacity: 0.1),
          borderRadius: BorderRadius.circular(54.r),
          padding: EdgeInsets.all(16.0.w),
          child: Row(
            children: [
              CircleAvatar(
                radius: 20.h,
                backgroundImage:
                    AssetImage(Assets.icons.totalTopUpIconPng.path),
              ),
              spaceW10,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Total Top Up', style: AppStyle.semibold_16),
                    spaceH2,
                    Text(
                      'USDT',
                      style:
                          AppStyle.regular_14.copyWith(color: AppColor.grey500),
                    ),
                  ],
                ),
              ),
              spaceW8,
              Text('12.397.45', style: AppStyle.semibold_20),
              spaceW8,
              CircleAvatar(
                radius: 8.0.h,
                backgroundColor: AppColor.whiteColor,
                backgroundImage: AssetImage(Assets.icons.coinIcon.path),
              )
            ],
          ),
        );
      },
    );
  }
}
