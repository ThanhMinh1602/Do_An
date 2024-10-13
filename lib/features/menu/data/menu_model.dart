import 'package:do_an_flutter/core/routers/app_router.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';

class MenuModel {
  final String iconPath;
  final String text;
  final String route;

  MenuModel({required this.iconPath, required this.text, required this.route});

  static List<MenuModel> menuLists = [
    MenuModel(
        iconPath: Assets.icons.homeIconSvg,
        text: 'Home',
        route: AppRouter.homePage),
    MenuModel(
        iconPath: Assets.icons.howItWorkIconSvg,
        text: 'How It Works',
        route: AppRouter.homePage),
    MenuModel(
        iconPath: Assets.icons.whitePaperIconSvg,
        text: 'White Paper',
        route: AppRouter.homePage),
    MenuModel(
        iconPath: Assets.icons.affiliateProgramIconSvg,
        text: 'Affiliate Program',
        route: AppRouter.homePage),
    MenuModel(
        iconPath: Assets.icons.newsIconSvg,
        text: 'News',
        route: AppRouter.newsPage),
    MenuModel(
        iconPath: Assets.icons.docsIconSvg,
        text: 'Documents',
        route: AppRouter.homePage),
  ];
}
