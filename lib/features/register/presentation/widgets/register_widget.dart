import 'dart:ui';

import 'package:do_an_flutter/core/components/appbar/app_bar_mobile.dart';
import 'package:do_an_flutter/core/components/background/background_custom.dart';
import 'package:do_an_flutter/core/components/bottombar/bottom_bar_custom.dart';
import 'package:do_an_flutter/core/components/card/gradient_container_custom.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/utils/format_string_utils.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import '../../../../core/constants/app_style.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({super.key});

  @override
  State<RegisterWidget> createState() => _RegisterWidgetsState();
}

class _RegisterWidgetsState extends State<RegisterWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.appBarColor,
        appBar: AppBarMobile(
          context,
        ),
        bottomNavigationBar: const BottomBarCustom(),
        body: BackgroundCustom(
          child: ListView(
            padding: EdgeInsets.all(24.0.w),
            children: [
              Column(
                children: [
                  _buildTopWalleCard(),
                  _buildBottomWalletCard(),
                  spaceH16,
                  _builddTextField(),
                  spaceH16,
                  Container(
                    width: double.infinity,
                    height: 120.h,
                    decoration: BoxDecoration(
                      border: GradientBoxBorder(
                          gradient: AppColor.buildGradient(opacity: 0.2)),
                      borderRadius: BorderRadius.circular(8.0.r),
                      image: DecorationImage(
                          image: AssetImage(
                            Assets.images.joinNowBanner.path,
                          ),
                          fit: BoxFit.cover),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Join Now!',
                            style: AppStyle.bold_36
                                .copyWith(color: AppColor.whiteColor)),
                        Text('And leverage 1000 times of your funds',
                            style: AppStyle.semibold_16),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }

  Container _builddTextField() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 10.0.h),
      decoration: BoxDecoration(
          color: AppColor.grey900,
          border: Border.all(color: AppColor.grey800!),
          borderRadius: BorderRadius.circular(12.0.r)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ref.Address*',
            style: AppStyle.regular_16.copyWith(color: AppColor.grey700),
          ),
          TextField(
            style: AppStyle.regular_16,
            decoration: InputDecoration(
              isDense: true,
              constraints: BoxConstraints(maxHeight: 20.0.h),
              contentPadding: const EdgeInsets.all(0),
              border: InputBorder.none,
              hintText: 'Enter',
              hintStyle: AppStyle.regular_16.copyWith(color: AppColor.grey700),
            ),
          )
        ],
      ),
    );
  }

  GradientContainerCustom _buildBottomWalletCard() {
    return GradientContainerCustom(
      width: double.infinity,
      blur: 120,
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(12.0.r)),
      padding: EdgeInsets.all(16.0.w),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 3,
        separatorBuilder: (_, __) => spaceH12,
        itemBuilder: (context, index) {
          return GradientContainerCustom(
            padding: EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 16.0.w),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 12.0.w,
                  backgroundImage: const NetworkImage(
                      'https://cdn.pixabay.com/photo/2018/09/28/08/40/dragon-3708746_960_720.png'),
                ),
                spaceW8,
                Expanded(
                  child:
                      Text('data'.toUpperCase(), style: AppStyle.semibold_18),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('12.397.45', style: AppStyle.semibold_14),
                    Text('542,54', style: AppStyle.regular_12),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }

  GradientContainerCustom _buildTopWalleCard() {
    return GradientContainerCustom(
      width: double.infinity,
      blur: 50,
      padding: EdgeInsets.symmetric(vertical: 20.0.h, horizontal: 16.0.w),
      borderGradient: AppColor.buildGradient(opacity: 0.2),
      gradient: AppColor.buildGradient(opacity: 0.1),
      borderRadius: BorderRadius.vertical(top: Radius.circular(12.0.r)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Wallet',
            style: AppStyle.regular_16,
          ),
          spaceH12,
          Row(
            children: [
              CircleAvatar(
                radius: 24.0.w,
                backgroundImage: const NetworkImage(
                  'https://cdn.pixabay.com/photo/2024/01/12/08/48/traditional-8503473_960_720.jpg',
                ),
              ),
              spaceW12,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        FormatStringUtils.shortenString(
                            '136123981273127398123'),
                        style: AppStyle.bold_20),
                    spaceH4,
                    Text('Metamask', style: AppStyle.regular_16),
                  ],
                ),
              ),
              spaceW12,
              Icon(
                Icons.logout_outlined,
                size: 24.sp,
                color: AppColor.grey500,
              )
            ],
          )
        ],
      ),
    );
  }
}
