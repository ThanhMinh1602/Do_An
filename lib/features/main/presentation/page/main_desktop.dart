import 'package:do_an_flutter/core/components/appbar/app_bar_desktop.dart';
import 'package:do_an_flutter/core/components/appbar/app_bar_mobile.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/extensions/builder_context_extension.dart';
import 'package:do_an_flutter/core/utils/font_weight.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/page/loading_page.dart';
import 'package:do_an_flutter/features/main/presentation/cubit/main_cubit.dart';
import 'package:do_an_flutter/features/main/data/menu_model.dart';
import 'package:do_an_flutter/features/news/presentation/page/news_page.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColor.backgroundColor,
          // appBar: context.isDesktop
          //     ? AppBarDesktop(
          //         pageIndex: state.pageIndex,
          //       )
          //     : AppBarMobile(context),
          drawer: Drawer(
            backgroundColor: AppColor.grey900,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            width: 300.w,
            child: Column(
              children: [
                _buildHeader(),
                _buildMenuList(context),
              ],
            ),
          ),
          body: Stack(
            children: [
              IndexedStack(
                index: state.pageIndex,
                children: [
                  const LoadingPage(),
                  Container(color: Colors.blue),
                  Container(color: Colors.amber),
                  Container(color: Colors.green),
                  const NewsPage(),
                  Container(color: Colors.pink),
                ],
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: AppBarDesktop(
                  pageIndex: state.pageIndex,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildHeader() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 28.0.w, vertical: 16.0.h),
      alignment: Alignment.centerLeft,
      color: AppColor.grey800,
      child: SvgPicture.asset(
        Assets.icons.logo,
        width: 48.0.w,
        height: 48.0.w,
      ),
    );
  }

  Widget _buildMenuList(BuildContext context) {
    return ListView.separated(
      itemCount: MenuModel.menuLists.length,
      shrinkWrap: true,
      padding: EdgeInsets.all(16.0.w),
      separatorBuilder: (context, index) => SizedBox(height: 8.0.h),
      itemBuilder: (context, index) {
        final menuItem = MenuModel.menuLists[index];
        return BlocBuilder<MainCubit, MainState>(
          builder: (context, state) {
            return _buildDrawerItem(
                iconPath: menuItem.iconPath,
                text: menuItem.text,
                isSelected: state.pageIndex == index,
                onTap: () {
                  context.read<MainCubit>().onChangePage(index);
                  context.getNavigator.pop();
                });
          },
        );
      },
    );
  }

  Widget _buildDrawerItem({
    required String iconPath,
    required String text,
    required bool isSelected,
    void Function()? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 12.0.h, horizontal: 20.0.w),
        decoration: BoxDecoration(
          gradient: isSelected ? AppColor.buildGradient() : null,
          borderRadius: BorderRadius.circular(14.0),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              iconPath,
              width: 28.0.w,
              color: AppColor.whiteColor,
            ),
            spaceW20,
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 16.0.sp,
                  fontWeight: semibold,
                  color: AppColor.whiteColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
