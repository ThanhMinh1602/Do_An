import 'package:do_an_flutter/core/components/appbar/app_bar_mobile.dart';
import 'package:do_an_flutter/core/components/bottom_sheets/bottom_sheets_custom.dart';
import 'package:do_an_flutter/core/components/menu/dash_board_menu.dart';
import 'package:do_an_flutter/core/components/tabbar/tab_bar_custom.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/features/dashboard/presentation/page/dashboard_page.dart';
import 'package:do_an_flutter/features/logged_main/presentation/widgets/topup_table_widget.dart';
import 'package:do_an_flutter/features/logged_main/presentation/widgets/trade_table_widget.dart';
import 'package:do_an_flutter/features/logged_main/presentation/cubit/logged_main_cubit.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LoggedMainWidget extends StatelessWidget {
  const LoggedMainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const LoggedMainMenu(),
      body: BlocBuilder<LoggedMainCubit, LoggedMainState>(
          builder: (context, state) {
        return Stack(
          children: [
            IndexedStack(
              index: state.pageIndex,
              children: [
                const DashboardPage(),
                Container(color: Colors.white),
                Container(color: Colors.green),
                Container(color: Colors.blueAccent)
              ],
            ),
            _buildAppbar(context)
          ],
        );
      }),
    );
  }

  Widget _buildAppbar(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: AppBarMobile(
        context,
        actions: [
          IconButton(
            onPressed: () {
              BottomSheetsCustom.showBottomSheet(
                context,
                title: 'History',
                padding: EdgeInsets.only(top: 24.0.h, bottom: 10.0.h),
                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    children: [
                      CustomTabBar(
                        tabs: const ['Trade', 'Top Up'],
                        borderRadius: 35.0.w,
                      ),
                      spaceH24,
                      const Expanded(
                        child: TabBarView(
                          children: [
                            TradeTableWidget(),
                            TopupTableWidget(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            icon: SvgPicture.asset(Assets.icons.historyIconSvg,
                width: 28.0.w, height: 28.0.w),
          )
        ],
      ),
    );
  }
}
