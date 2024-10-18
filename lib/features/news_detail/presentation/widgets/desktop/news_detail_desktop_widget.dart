import 'package:do_an_flutter/core/components/appbar/app_bar_desktop.dart';
import 'package:do_an_flutter/core/components/background/background_custom.dart';
import 'package:do_an_flutter/core/components/footer/desktop_footer_custom.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/extensions/builder_context_extension.dart';
import 'package:do_an_flutter/core/utils/desktop_space.dart';
import 'package:do_an_flutter/features/news/data/models/new_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsDetailDesktopWidget extends StatelessWidget {
  final NewItemModel newItemModel;
  const NewsDetailDesktopWidget({
    super.key,
    required this.newItemModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.backgroundColor,
        body: Stack(
          children: [
            const Positioned(
                top: 0, left: 0, right: 0, child: AppBarDesktop(pageIndex: 4)),
            BackgroundCustom(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 336.0)
                        .copyWith(top: 24 + 92, bottom: 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildBack(context),
                        const SizedBox(height: 24.0),
                        Text(
                          newItemModel.title,
                          style: DesktopAppStyle.semiboldStyle_18,
                        ),
                        const SizedBox(height: 12.0),
                        Text(
                          newItemModel.subTitle[0],
                          style: DesktopAppStyle.regularStyle_14,
                        ),
                        const SizedBox(height: 12.0),
                        Image.network(
                          newItemModel.imagePath,
                          width: double.infinity,
                          height: 380,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 24.0),
                        Text(
                          newItemModel.subTitle[1],
                          style: DesktopAppStyle.regularStyle_14,
                        ),
                        const SizedBox(height: 16.0),
                        Text(
                          newItemModel.subTitle[2],
                          style: DesktopAppStyle.regularStyle_14,
                        ),
                        Text(
                          newItemModel.subTitle[3],
                          style: DesktopAppStyle.regularStyle_14,
                        ),
                        const SizedBox(height: 12.0),
                        Text(
                          newItemModel.subTitle[4],
                          style: DesktopAppStyle.regularStyle_14,
                        ),
                        Text(
                          newItemModel.subTitle[5],
                          style: DesktopAppStyle.regularStyle_14,
                        ),
                        Text(
                          newItemModel.subTitle[6],
                          style: DesktopAppStyle.regularStyle_14,
                        ),
                        Text(
                          newItemModel.subTitle[7],
                          style: DesktopAppStyle.regularStyle_14,
                        ),
                        Text(
                          newItemModel.subTitle[8],
                          style: DesktopAppStyle.regularStyle_14,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  const DesktopFooterCustom()
                ],
              ),
            ),
          ],
        ));
  }

  Widget _buildBack(BuildContext context) {
    return InkWell(
      onTap: () => context.getNavigator.pop(),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.arrow_back_rounded,
            size: 24.sp,
            color: AppColor.primaryColor,
          ),
          const SizedBox(height: 16.0),
          Text(
            'New Detail',
            style: DesktopAppStyle.semiBoldStyle_20
                .copyWith(color: AppColor.primaryColor),
          )
        ],
      ),
    );
  }
}
