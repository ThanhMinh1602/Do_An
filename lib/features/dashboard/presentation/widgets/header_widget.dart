import 'package:do_an_flutter/core/components/button/custom_button.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/utils/dimensions.dart';
import 'package:do_an_flutter/core/utils/format_string_utils.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: Dimensions.paddingVertical,
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24.0.w,
            backgroundImage: const NetworkImage(
                'https://cdn.pixabay.com/photo/2023/10/24/14/59/woman-8338390_1280.jpg'),
          ),
          spaceW12,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome', style: AppStyle.regular_16),
              spaceH2,
              Text(
                FormatStringUtils.shortenString('0Xd3hdfgjajf36f7',
                    selectQuantityNumber: 3),
                style: AppStyle.bold_24,
              ),
              spaceW12,
            ],
          ),
          const Spacer(),
          CustomButton(
            btnTxt: 'Top Up',
            width: 90.w,
            height: 36.h,
          )
        ],
      ),
    );
  }
}
