import 'package:do_an_flutter/features/news/data/models/new_item_model.dart';
import 'package:do_an_flutter/features/news_detail/presentation/widgets/news_detail_widget.dart';
import 'package:flutter/material.dart';

class NewsDetailPage extends StatelessWidget {
  final NewItemModel newItemModel;
  final PageController? pageController;
  const NewsDetailPage(
      {super.key, required this.newItemModel, this.pageController});

  @override
  Widget build(BuildContext context) {
    return NewsDetailWidget(
      newItemModel: newItemModel,
      pageController: pageController,
    );
  }
}
