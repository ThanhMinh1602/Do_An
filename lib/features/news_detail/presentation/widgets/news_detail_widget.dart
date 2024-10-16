import 'package:do_an_flutter/core/extensions/builder_context_extension.dart';
import 'package:do_an_flutter/features/news/data/models/new_item_model.dart';
import 'package:do_an_flutter/features/news_detail/presentation/widgets/desktop/news_detail_desktop_widget.dart';
import 'package:do_an_flutter/features/news_detail/presentation/widgets/mobile/news_detail_mobile_widget.dart';
import 'package:flutter/material.dart';

class NewsDetailWidget extends StatelessWidget {
  final NewItemModel newItemModel;
  final PageController? pageController;

  const NewsDetailWidget(
      {super.key, required this.newItemModel, this.pageController});

  @override
  Widget build(BuildContext context) {
    return context.isDesktop
        ? NewsDetailDesktopWidget(
            newItemModel: newItemModel,
          )
        : NewsDetailMobileWidget(newItemModel: newItemModel);
  }
}
