import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/features/trading/presentation/widgets/trading_list_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TradingContentMobileWidget extends StatefulWidget {
  const TradingContentMobileWidget({super.key});

  @override
  State<TradingContentMobileWidget> createState() =>
      _TradingContentMobileWidgetState();
}

class _TradingContentMobileWidgetState
    extends State<TradingContentMobileWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 76.0.h,
          alignment: Alignment.center, // Căn giữa theo cả trục ngang và dọc.
          child: ShaderMask(
            shaderCallback: (bounds) => LinearGradient(
              colors: [
                AppColor.c_31D0D0.withOpacity(1.0),
                AppColor.c_DC349E.withOpacity(1.0),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              transform: const GradientRotation(20 * (3.14159265359 / 180)),
              tileMode: TileMode.clamp,
              stops: const [0.0, 1.0],
            ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 24.0.h),
              child: Text(
                'Arbitrage Opportunities (50)',
                style: AppStyle.semibold_24,
                overflow: TextOverflow.visible,
              ),
            ),
          ),
        ),
        const TradingListCardWidget(),
      ],
    );
  }
}
