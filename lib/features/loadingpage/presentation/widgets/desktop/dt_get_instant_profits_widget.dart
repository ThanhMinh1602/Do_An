import 'dart:async';
import 'dart:ui';
import 'package:do_an_flutter/core/components/blur/custom_blur.dart';
import 'package:do_an_flutter/core/components/blur/rectangle_blur.dart';
import 'package:do_an_flutter/core/components/card/model/information.dart';
import 'package:do_an_flutter/core/components/text/gradient_text.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/extensions/builder_context_extension.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/desktop/dt_explore_button.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DtGetInstantProfitsWidget extends StatefulWidget {
  const DtGetInstantProfitsWidget({super.key});

  @override
  State<DtGetInstantProfitsWidget> createState() =>
      _DtGetInstantProfitsWidgetState();
}

class _DtGetInstantProfitsWidgetState extends State<DtGetInstantProfitsWidget> {
  late PageController _pageController;
  late Timer _timer;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < instantProfits.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 727.0,
      width: context.getWidth,
      child: PageView.builder(
        // controller: _pageController,
        itemCount: instantProfitsDesktop.length,
        itemBuilder: (context, index) {
          final item = instantProfitsDesktop[index];
          return _PageWidget(
            screenWidth: context.getWidth,
            screenHeight: context.getHeight,
            imagePath: item.imagePath,
            title: item.title,
            content: item.content,
          );
        },
      ),
    );
  }
}

class _PageWidget extends StatelessWidget {
  const _PageWidget({
    required this.screenWidth,
    required this.screenHeight,
    required this.imagePath,
    required this.title,
    required this.content,
  });

  final double screenWidth;
  final double screenHeight;
  final String imagePath;
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 208.0,
          right: 208.0,
          child: Column(
            children: [
              const SizedBox(height: 64),
              GradientText(
                text: "Get Instant Profits At",
                style: DesktopAppStyle.boldStyle_36,
                gradient: AppColor.buildGradient(),
              ),
              const SizedBox(height: 12.0),
              SvgPicture.asset(
                Assets.images.metamaskSeeklogo,
                width: 286.37,
              ),
              const SizedBox(height: 24.0),
              _buildMainContent(
                  imagePath: imagePath, title: title, content: content),
            ],
          ),
        ),
        Positioned(
          top: 495,
          left: 454.55,
          child: Transform.rotate(
            angle: 20 * (3.14159265359 / -180), // Chuyển đổi độ sang radian
            child: const RectangleBlur(
              width: 1300,
            ),
          ),
        ),
      ],
    );
  }
}

Widget _buildMainContent({
  required String imagePath,
  required String title,
  required String content,
}) {
  return SizedBox(
    width: 1024.0,
    height: 527,
    child: Row(
      children: [
        SizedBox(
          width: 465.0,
          child: Padding(
            padding: const EdgeInsets.only(left: 100.0, top: 72.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: DesktopAppStyle.semiboldText_28,
                ),
                const SizedBox(height: 24.0),
                Text(
                  content,
                  style: DesktopAppStyle.regularText_20,
                ),
                const SizedBox(height: 40),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    DtExploreButton(),
                  ],
                ),
              ],
            ),
          ),
        ),
        Image.asset(
          imagePath,
          width: 559,
          height: 527,
        ),
      ],
    ),
  );
}
