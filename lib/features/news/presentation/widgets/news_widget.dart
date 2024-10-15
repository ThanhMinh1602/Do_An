import 'package:do_an_flutter/core/components/carousel_slider/carousel_slider_custom.dart';
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

class NewsWidget extends StatefulWidget {
  const NewsWidget({super.key});

  @override
  State<NewsWidget> createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  @override
  void initState() {
    context.read<NewsCubit>().onInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        return ListView(
          padding: EdgeInsets.symmetric(vertical: 24.0.h),
          children: [
            GradientText(text: 'News', gradient: AppColor.buildGradient()),
            spaceH24,
            _buildSlider(context),
            spaceH40,
            buildListNew(state)
          ],
        );
      },
    );
  }

  Widget buildListNew(NewsState state) {
    return Expanded(
      child: ListView.separated(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('8 hours ago', style: AppStyle.regular_12),
                      Text('Read More',
                          style: AppStyle.bold_14
                              .copyWith(color: AppColor.primaryColor))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSlider(BuildContext context) {
    return CarouselSliderCustom(
      itemCount: 5,
      aspectRatio: context.getWidth / 180,
      viewportFraction: 0.8,
      itemBuilder: (context, index, realIndex) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8.0.r),
          child: Image.network(
            'https://cdn.pixabay.com/photo/2024/07/23/11/09/ai-generated-8915027_1280.jpg',
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
