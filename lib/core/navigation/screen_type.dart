part of 'navigator.dart';

@freezed
class ScreenType with _$ScreenType {
  const factory ScreenType.loadingPage() = LoadingPageType;
  const factory ScreenType.newsDetailPage(NewItemModel newItemModel) =
      NewsDetailPageType;
  const factory ScreenType.registerPage() = RegisterPageType;
  const factory ScreenType.dashboardPage() = DashboardPageType;
}

class ScreenTypeHelper {
  static Widget page(ScreenType screenType) {
    return screenType.when(
        dashboardPage: () => const DashboardPage(),
        loadingPage: () => const LoadingPage(),
        newsDetailPage: (newItemModel) =>
            NewsDetailPage(newItemModel: newItemModel),
        registerPage: () => const RegisterPage());
  }
}
