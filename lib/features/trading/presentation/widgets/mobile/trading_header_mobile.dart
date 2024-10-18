import 'package:do_an_flutter/core/components/button/custom_button.dart';
import 'package:do_an_flutter/core/components/card/gradient_container_custom.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/utils/format_string_utils.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/features/trading/presentation/widgets/trading_header_card_widget.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TradingHeaderMobileWidget extends StatelessWidget {
  const TradingHeaderMobileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200.0.h,
      decoration: BoxDecoration(
        color: AppColor.primaryColor,
        image: DecorationImage(
          image: AssetImage(
            Assets.images.headerTradingPng.path,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          spaceH24,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  spaceW16,
                  SvgPicture.asset(
                    Assets.images.avatarSvg,
                    height: 36.0.h,
                    width: 36.0.w,
                  ),
                  spaceW12,
                  Text(
                    FormatStringUtils.shortenString(
                      '0Xd3hdfgjajf36f7',
                      selectQuantityNumber: 4,
                    ),
                    style: AppStyle.semibold_24,
                  ),
                ],
              ),
              Row(
                children: [
                  CustomButton(
                    btnTxt: 'Top Up',
                    textStyle: AppStyle.semibold_16,
                    height: 36.0.h,
                    width: 90.0.w,
                    borderRadius: 10.0.r,
                  ),
                  spaceW12,
                ],
              ),
            ],
          ),
          const Expanded(
            child: TradingHeaderCardWidget(),
          ),
        ],
      ),
    );
  }
}
