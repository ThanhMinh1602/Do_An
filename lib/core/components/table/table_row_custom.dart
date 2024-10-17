import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TableRowCustom extends StatelessWidget {
  final List<Widget> rowItems;
  const TableRowCustom({
    super.key,
    required this.rowItems,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 16.0.w,
        vertical: 12.0.h,
      ),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: AppColor.whiteColor.withOpacity(0.05),
            width: 1.0,
          ),
        ),
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: rowItems),
    );
  }
}
