import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AppBarCuastom extends StatelessWidget implements PreferredSizeWidget {
  final BuildContext context;
  final List<Widget>? actions;
  const AppBarCuastom(
    this.context, {
    super.key,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.appBarColor,
      leading: IconButton(
        onPressed: () => Scaffold.of(context).openDrawer(),
        icon: SvgPicture.asset(
          Assets.images.iconMenu,
          width: 28.0,
          height: 28.0,
        ),
      ),
      title: SvgPicture.asset(Assets.icons.logo, width: 36.0.w, height: 36.0.w),
      centerTitle: true,
      actions: [...actions ?? [], SizedBox(width: 16.0.w)],
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 64.0);
}
