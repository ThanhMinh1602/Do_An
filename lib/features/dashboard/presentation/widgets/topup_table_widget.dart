import 'package:do_an_flutter/core/components/card/crypto_pair_custom.dart';
import 'package:do_an_flutter/core/components/table/custom_row_cell.dart';
import 'package:do_an_flutter/core/components/table/header_cell_custom.dart';
import 'package:do_an_flutter/core/components/table/table_custom.dart';
import 'package:do_an_flutter/core/components/table/table_row_custom.dart';
import 'package:do_an_flutter/core/components/table/table_header_custom.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/utils/dimensions.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopupTableWidget extends StatelessWidget {
  const TopupTableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingHorizontal),
      child: TableCustom(
        height: 580.h,
        header: TableHeaderCustom(
          headerItems: [
            HeaderCellCustom(
              title: 'Time',
              textAlign: TextAlign.start,
              width: 72.w,
            ),
            HeaderCellCustom(
              title: 'Token',
              textAlign: TextAlign.center,
              width: 76.67.w,
            ),
            HeaderCellCustom(
              title: 'Amount',
              textAlign: TextAlign.center,
              width: 76.67.w,
            ),
            HeaderCellCustom(
              title: 'Value',
              textAlign: TextAlign.end,
              width: 76.67.w,
            ),
          ],
        ),
        totalItems: 100,
        itemsPerPage: 10,
        bodyBuilder: (page) => ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return _buildTopUpRow(
                time: '12:23',
                date: 'Mar 23 2024',
                token: 'AVVE',
                amount: '1.531',
                value: '234.34');
          },
        ),
      ),
    );
  }

  TableRowCustom _buildTopUpRow({
    required String time,
    required String date,
    required String amount,
    required String value,
    required String token,
  }) {
    return TableRowCustom(
      rowItems: [
        CustomRowCell(
            width: 72.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(time,
                    style: AppStyle.medium_14, textAlign: TextAlign.start),
                spaceH2,
                Text(
                  date,
                  style: AppStyle.medium_12.copyWith(color: AppColor.grey500),
                  textAlign: TextAlign.start,
                ),
              ],
            )),

        CustomRowCell(
            width: 76.67.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 7.0.w,
                  backgroundImage: AssetImage(Assets.icons.linkIcon.path),
                ),
                spaceW4,
                Text(token, style: AppStyle.regular_14)
              ],
            )), //3
        CustomRowCell(
          width: 76.67.w,
          child: Text(amount,
              style: AppStyle.regular_14, textAlign: TextAlign.center),
        ),
        //4
        CustomRowCell(
            width: 76.67.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(value, style: AppStyle.regular_14),
                spaceW4,
                CircleAvatar(
                  radius: 7.0.w,
                  backgroundImage: AssetImage(Assets.icons.linkIcon.path),
                ),
              ],
            )),
      ],
    );
  }
}
