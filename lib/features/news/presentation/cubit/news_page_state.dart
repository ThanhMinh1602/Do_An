import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter/foundation.dart';

part 'news_page_state.g.dart';

@CopyWith()
@immutable
class NewsPageState {
  final bool isLoading;

  const NewsPageState({this.isLoading = false});
}
