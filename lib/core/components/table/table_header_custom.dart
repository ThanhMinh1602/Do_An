import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TableHeaderCustom extends StatelessWidget {
  final List<Widget> headerItems;
  const TableHeaderCustom({super.key, required this.headerItems});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 19.0.h),
      decoration: BoxDecoration(
          gradient: AppColor.buildGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            AppColor.whiteColor.withOpacity(0.1),
            AppColor.whiteColor.withOpacity(0.05),
          ])),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: headerItems,
      ),
    );
  }
}
