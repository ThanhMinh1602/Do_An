import 'package:do_an_flutter/core/components/background/background_custom.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/extensions/builder_context_extension.dart';
import 'package:do_an_flutter/core/utils/dimensions.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/features/dashboard/data/dashboard_menu_item.dart';
import 'package:do_an_flutter/features/logged_main/presentation/cubit/logged_main_cubit.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LoggedMainMenu extends StatelessWidget {
  const LoggedMainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    final pageIndex = context.watch<LoggedMainCubit>().state.pageIndex;
    return ListView.separated(
      itemCount: dashBoardMenuLists.length,
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(
          horizontal: Dimensions.paddingHorizontal, vertical: 18.0.h),
      separatorBuilder: (context, index) => SizedBox(height: 8.0.h),
      itemBuilder: (context, index) {
        final menuItem = dashBoardMenuLists[index];
        final isSelected = pageIndex == index;
        return _buildDrawerItem(
          iconPath: menuItem.iconPath,
          text: menuItem.text,
          isSelected: isSelected,
          subtext: menuItem.subtext,
          onTap: () {
            context.getNavigator.pop();
            context.read<LoggedMainCubit>().selectMenuPage(index);
          },
        );
      },
    );
  }

  Widget _buildDrawerItem({
    required String iconPath,
    required String text,
    List<String>? subtext,
    required bool isSelected,
    void Function()? onTap,
  }) {
    return Column(
      children: [
        GestureDetector(
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
                    style: AppStyle.semiboldText_16,
                  ),
                ),
              ],
            ),
          ),
        ),
        if (subtext != null)
          ...List.generate(
            subtext.length,
            (index) => Container(
              width: double.infinity,
              padding:
                  EdgeInsets.symmetric(vertical: 12.0.h, horizontal: 20.0.w),
              child: Row(
                children: [
                  SizedBox(width: 28.0.w),
                  spaceW20,
                  Expanded(
                    child: Text(
                      subtext[index],
                      style: AppStyle.semiboldText_16
                          .copyWith(color: AppColor.grey400),
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
