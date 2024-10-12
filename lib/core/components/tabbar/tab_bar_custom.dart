import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTabBar extends StatelessWidget {
  final TabController controller;
  final List<String> tabs;

  const CustomTabBar({
    super.key,
    required this.controller,
    required this.tabs,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280.0.w,
      height: 44.0.h,
      padding: EdgeInsets.all(4.0.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.0.r),
        color: AppColor.c_111D1B,
      ),
      child: TabBar(
        controller: controller,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(22.0.r),
          gradient: AppColor.buildGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColor.c_31D0D0,
              AppColor.c_31D0D0.withOpacity(0.1),
            ],
          ),
        ),
        dividerColor: Colors.transparent,
        tabs: tabs.map((tab) {
          return Container(
            width: 134.0.w,
            height: 36.0.h,
            alignment: Alignment.center,
            child: Text(
              tab,
              style: TextStyle(
                fontSize: 16.0.sp,
                fontWeight: FontWeight.bold,
                color: AppColor.whiteColor,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
