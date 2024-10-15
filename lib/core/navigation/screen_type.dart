part of 'navigator.dart';

@freezed
class ScreenType with _$ScreenType {
  const factory ScreenType.loadingPage() = LoadingPageType;
  const factory ScreenType.newsDetailPage(NewItemModel newItemModel) =
      NewsDetailPageType;
}

class ScreenTypeHelper {
  static Widget page(ScreenType screenType) {
    return screenType.when(
      loadingPage: () => const LoadingPage(),
      newsDetailPage: (newItemModel) =>
          NewsDetailPage(newItemModel: newItemModel),
    );
  }
}
