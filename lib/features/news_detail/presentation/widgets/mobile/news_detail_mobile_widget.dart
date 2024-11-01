import 'package:do_an_flutter/core/components/appbar/app_bar_mobile.dart';
import 'package:do_an_flutter/core/components/background/background_custom.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/extensions/builder_context_extension.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/features/news/data/models/new_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsDetailMobileWidget extends StatelessWidget {
  final NewItemModel newItemModel;
  const NewsDetailMobileWidget({super.key, required this.newItemModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarMobile(context),
        backgroundColor: AppColor.backgroundColor,
        body: BackgroundCustom(
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 24.0.h, horizontal: 16.0.w),
            children: [
              _buildBack(context),
              spaceH24,
              Text(
                newItemModel.title,
                style: AppStyle.semibold_18,
              ),
              spaceH12,
              Text(
                newItemModel.subTitle[0],
                style: AppStyle.regular_14,
              ),
              spaceH12,
              Image.network(
                newItemModel.imagePath,
                width: double.infinity,
                height: 210.h,
                fit: BoxFit.cover,
              ),
              spaceH24,
              Text(
                newItemModel.subTitle[1],
                style: AppStyle.regular_14,
              ),
              spaceH16,
              Text(
                newItemModel.subTitle[2],
                style: AppStyle.regular_14,
              ),
              Text(
                newItemModel.subTitle[3],
                style: AppStyle.regular_14,
              ),
              spaceH12,
              Text(
                newItemModel.subTitle[4],
                style: AppStyle.regular_14,
              ),
              Text(
                newItemModel.subTitle[5],
                style: AppStyle.regular_14,
              ),
              Text(
                newItemModel.subTitle[6],
                style: AppStyle.regular_14,
              ),
              Text(
                newItemModel.subTitle[7],
                style: AppStyle.regular_14,
              ),
              Text(
                newItemModel.subTitle[8],
                style: AppStyle.regular_14,
              ),
            ],
          ),
        ));
  }

  Row _buildBack(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => context.getNavigator.pop(),
          child: Icon(
            Icons.arrow_back_rounded,
            size: 24.sp,
            color: AppColor.primaryColor,
          ),
        ),
        spaceW16,
        Text(
          'New Detail',
          style: AppStyle.semibold_20.copyWith(color: AppColor.primaryColor),
        )
      ],
    );
  }
}
