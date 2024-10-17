import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:flutter/material.dart';

class HeaderCellCustom extends StatelessWidget {
  final String title;
  final TextAlign textAlign;
  final double width;

  const HeaderCellCustom({
    super.key,
    required this.title,
    required this.textAlign,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Text(
        title,
        textAlign: textAlign,
        style: AppStyle.regular_14.copyWith(color: AppColor.grey300),
      ),
    );
  }
}
