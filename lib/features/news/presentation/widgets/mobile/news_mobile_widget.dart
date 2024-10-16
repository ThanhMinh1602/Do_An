import 'package:do_an_flutter/core/components/carousel_slider/carousel_slider_custom.dart';
import 'package:do_an_flutter/core/components/footer/mobile_footer_custom.dart';
import 'package:do_an_flutter/core/components/text/gradient_text.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/extensions/builder_context_extension.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/features/news/data/models/new_item_model.dart';
import 'package:do_an_flutter/features/news/presentation/cubit/news_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsMobileWidget extends StatefulWidget {
  final NewsState state;
  const NewsMobileWidget({super.key, required this.state});

  @override
  State<NewsMobileWidget> createState() => _NewsMobileWidgetState();
}

class _NewsMobileWidgetState extends State<NewsMobileWidget> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 24.0.h),
      children: [
        GradientText(text: 'News', gradient: AppColor.buildGradient()),
        spaceH24,
        _buildSlider(context),
        spaceH24,
        buildListNew(widget.state),
        const MobileFooterCustom()
      ],
    );
  }

  Widget buildListNew(NewsState state) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 24.0.w),
            child: Align(
              alignment: Alignment.centerLeft,
              child: GradientText(
                text: 'Latest News',
                gradient: AppColor.buildGradient(),
                style: AppStyle.semibold_24,
              ),
            ),
          ),
          spaceH24,
          ListView.separated(
            itemCount: state.newItemModels.length,
            separatorBuilder: (context, index) => spaceH16,
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final data = state.newItemModels[index];
              return _buildListNewItem(
                data: data,
                onTap: () => context.read<NewsCubit>().newDetail(data),
              );
            },
          ),
        ],
      ),
    );
  }

  GestureDetector _buildListNewItem(
      {required NewItemModel data, void Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: double.infinity,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0.r),
              child: Image.network(
                data.imagePath,
                fit: BoxFit.cover,
                width: 99.w,
                height: 99.w,
              ),
            ),
            spaceW16,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    data.title,
                    style: AppStyle.bold_14,
                  ),
                  spaceH8,
                  Text(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    data.subTitle[2],
                    style: AppStyle.regular_14,
                  ),
                  spaceH8,
                  _buildReadMore(
                    onTapReadMore: () =>
                        context.read<NewsCubit>().newDetail(data),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildReadMore({required void Function() onTapReadMore}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('8 hours ago', style: AppStyle.regular_12),
        InkWell(
          onTap: onTapReadMore,
          child: Text('Read More',
              style: AppStyle.bold_14.copyWith(color: AppColor.primaryColor)),
        )
      ],
    );
  }

  Widget _buildSlider(BuildContext context) {
    return Column(
      children: [
        CarouselSliderCustom(
          itemCount: 5,
          aspectRatio: context.getWidth / 180,
          viewportFraction: 0.8,
          itemBuilder: (context, index, realIndex) {
            final data = widget.state.newItemModels[index];
            return ClipRRect(
              borderRadius: BorderRadius.circular(8.0.r),
              child: Image.network(
                data.imagePath,
                fit: BoxFit.cover,
              ),
            );
          },
          onPageChanged: (index, _) {
            setState(() {
              pageIndex = index;
            });
          },
        ),
        spaceH12,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0.w),
          child: Column(
            children: [
              Text(
                widget.state.newItemModels[pageIndex].title,
                style: AppStyle.semibold_14,
              ),
              spaceH4,
              _buildReadMore(
                onTapReadMore: () => context
                    .read<NewsCubit>()
                    .newDetail(widget.state.newItemModels[pageIndex]),
              ),
            ],
          ),
        )
      ],
    );
  }
}
