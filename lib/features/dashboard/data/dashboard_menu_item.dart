import 'package:do_an_flutter/gen/assets.gen.dart';

class DashboardMenuModel {
  final String iconPath;
  final String text;
  final List<String>? subtext;

  DashboardMenuModel({
    this.subtext,
    required this.iconPath,
    required this.text,
  });
}

List<DashboardMenuModel> dashBoardMenuLists = [
  DashboardMenuModel(
    iconPath: Assets.icons.homeIconSvg,
    text: 'Dash board',
  ),
  DashboardMenuModel(
      iconPath: Assets.icons.howItWorkIconSvg,
      text: 'Tranding',
      subtext: ['Trade History', 'Top Up History']),
  DashboardMenuModel(
    iconPath: Assets.icons.whitePaperIconSvg,
    text: 'Affiliate Network',
  ),
  DashboardMenuModel(
      iconPath: Assets.icons.affiliateProgramIconSvg,
      text: 'Commissions & Bonus',
      subtext: [
        'Direct Commissions',
        'Top Up History',
        'Milestones’ Rewards',
        'Global Pool Sharing'
      ]),
];
