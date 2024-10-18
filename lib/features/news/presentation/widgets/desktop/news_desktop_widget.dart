import 'dart:ui';

import 'package:do_an_flutter/core/components/blur/custom_blur.dart';
import 'package:do_an_flutter/core/components/carousel_slider/carousel_slider_custom.dart';
import 'package:do_an_flutter/core/components/footer/desktop_footer_custom.dart';
import 'package:do_an_flutter/core/components/text/gradient_text.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/extensions/builder_context_extension.dart';
import 'package:do_an_flutter/features/news/presentation/cubit/news_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsDesktopWidget extends StatelessWidget {
  final NewsState state;

  const NewsDesktopWidget({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 92.0),
      children: [
        _buildSlider(context),
        const SizedBox(height: 40.0),
        buildListNew(),
        const SizedBox(height: 40.0),
        const DesktopFooterCustom()
      ],
    );
  }

  Widget buildListNew() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 336.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GradientText(
            text: 'Latest News',
            gradient: AppColor.buildGradient(),
            style: DesktopAppStyle.semiboldStyle_28,
          ),
          const SizedBox(height: 24),
          GridView.builder(
            itemCount: state.newItemModels.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                childAspectRatio: 245.33 / 242,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 24.0),
            itemBuilder: (context, index) {
              final data = state.newItemModels[index];
              return Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0.r),
                    child: Image.network(
                      data.imagePath,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 242 * (138 / 242),
                    ),
                  ),
                  const SizedBox(height: 242 * (16 / 242)),
                  Text(
                    data.title,
                    style: DesktopAppStyle.semiboldStyle_14,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  const SizedBox(height: 242 * (8 / 242)),
                  Text(
                    data.title,
                    style: DesktopAppStyle.regularStyle_14,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  const SizedBox(height: 242 * (8 / 242)),
                  _buildTimeAndReadMore(
                    onTapReadMore: () =>
                        context.read<NewsCubit>().newDetail(data),
                  )
                ],
              );
            },
          )
        ],
      ),
    );
  }

  Widget _buildSlider(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 336).copyWith(top: 24.0),
      child: CarouselSliderCustom(
        itemCount: 5,
        aspectRatio: context.getWidth / 676,
        viewportFraction: 0.83,
        itemBuilder: (context, index, realIndex) {
          final data = state.newItemModels[index];
          return Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  data.imagePath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: CustomBlur(
                  blur: 4,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 24.0),
                    decoration: BoxDecoration(
                      gradient: AppColor.buildGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            AppColor.backgroundColor.withOpacity(0.7),
                            AppColor.backgroundColor.withOpacity(0),
                          ]),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.title,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: DesktopAppStyle.semiboldStyle_16,
                        ),
                        const SizedBox(height: 4.0),
                        _buildTimeAndReadMore(
                          onTapReadMore: () =>
                              context.read<NewsCubit>().newDetail(data),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }

  Row _buildTimeAndReadMore({void Function()? onTapReadMore}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('8 Hours ago',
            style: DesktopAppStyle.regularStyle_14
                .copyWith(color: AppColor.grey500)),
        InkWell(
          onTap: onTapReadMore,
          child: Text(
            'Read more',
            style:
                DesktopAppStyle.semiboldStyle_14.copyWith(color: AppColor.primaryColor),
          ),
        )
      ],
    );
  }
}
