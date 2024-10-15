import 'package:do_an_flutter/gen/assets.gen.dart';

class MenuModel {
  final String iconPath;
  final String text;

  MenuModel({
    required this.iconPath,
    required this.text,
  });

  static List<MenuModel> menuLists = [
    MenuModel(
      iconPath: Assets.icons.homeIconSvg,
      text: 'Home',
    ),
    MenuModel(
      iconPath: Assets.icons.howItWorkIconSvg,
      text: 'How It Works',
    ),
    MenuModel(
      iconPath: Assets.icons.whitePaperIconSvg,
      text: 'White Paper',
    ),
    MenuModel(
      iconPath: Assets.icons.affiliateProgramIconSvg,
      text: 'Affiliate Program',
    ),
    MenuModel(
      iconPath: Assets.icons.newsIconSvg,
      text: 'News',
    ),
    MenuModel(
      iconPath: Assets.icons.docsIconSvg,
      text: 'Documents',
    ),
  ];
}
