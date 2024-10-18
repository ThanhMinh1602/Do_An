import 'package:do_an_flutter/core/components/appbar/app_bar_desktop.dart';
import 'package:do_an_flutter/core/components/appbar/app_bar_mobile.dart';
import 'package:do_an_flutter/core/components/menu/loadingpage_menu.dart';
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

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColor.backgroundColor,
          appBar: context.isDesktop ? null : AppBarMobile(context),
          drawer: const LoadingpageMenu(),
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
              if (context
                  .isDesktop) 
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
}
