import 'package:do_an_flutter/core/components/card/gradient_container_custom.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TablePagination extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final VoidCallback onNext;
  final VoidCallback onPrevious;

  const TablePagination({
    super.key,
    required this.currentPage,
    required this.totalPages,
    required this.onNext,
    required this.onPrevious,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: 14.0.h,
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildButtonPagination(
            onTap: currentPage > 1 ? onPrevious : null,
            iconPath: Assets.icons.tablePreviousIconSvg,
          ),
          spaceW10,
          Text(
            '$currentPage/$totalPages',
            style: AppStyle.regular_16.copyWith(color: AppColor.grey400),
          ),
          spaceW10,
          _buildButtonPagination(
            onTap: currentPage < totalPages ? onNext : null,
            iconPath: Assets.icons.tableNextIconSvg,
          ),
        ],
      ),
    );
  }

  Widget _buildButtonPagination(
      {void Function()? onTap, required String iconPath}) {
    return GestureDetector(
      onTap: onTap,
      child: GradientContainerCustom(
        width: 52.0.w,
        height: 32.0.h,
        borderRadius: BorderRadius.circular(22.0.r),
        borderGradient: AppColor.buildGradient(opacity: 0.3),
        gradient: AppColor.buildGradient(opacity: 0.1),
        padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 6.0.h),
        child: SvgPicture.asset(
          iconPath,
        ),
      ),
    );
  }
}
