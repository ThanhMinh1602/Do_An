import 'package:do_an_flutter/features/menu/data/menu_model.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/utils/font_weight.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/features/menu/presentation/cubit/app_menu_cubit.dart';
import 'package:do_an_flutter/features/menu/presentation/cubit/app_menu_state.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AppMenu extends StatelessWidget {
  const AppMenu({super.key});

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
    return ListView.separated(
      itemCount: MenuModel.drawers.length,
      shrinkWrap: true,
      padding: EdgeInsets.all(16.0.w),
      separatorBuilder: (context, index) => SizedBox(height: 8.0.h),
      itemBuilder: (context, index) {
        final drawerItem = MenuModel.drawers[index];
        return BlocBuilder<AppMenuCubit, AppMenuState>(
          builder: (context, state) {
            return _buildDrawerItem(
              iconPath: drawerItem.iconPath,
              text: drawerItem.text,
              isSelected: state.index == index,
              onTap: () {
                context.read<AppMenuCubit>().changePage(index);
                // Navigator.pop(context);
              },
            );
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
    return InkWell(
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
            SvgPicture.asset(iconPath, width: 28.0.w),
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
