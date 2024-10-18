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

class TradeTableWidget extends StatelessWidget {
  const TradeTableWidget({super.key});

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
                width: columnWidths[0].w,
              ),
              HeaderCellCustom(
                title: 'Pair',
                textAlign: TextAlign.center,
                width: columnWidths[1].w,
              ),
              HeaderCellCustom(
                title: 'Amount',
                textAlign: TextAlign.start,
                width: columnWidths[2].w,
              ),
              HeaderCellCustom(
                title: 'Profit',
                textAlign: TextAlign.end,
                width: columnWidths[3].w,
              ),
              HeaderCellCustom(
                title: 'Txh',
                textAlign: TextAlign.end,
                width: columnWidths[4].w,
              ),
            ],
          ),
          totalItems: 100,
          itemsPerPage: 20,
          bodyBuilder: (page) {
            return ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return _buildTrandeRow(
                  time: '12:23',
                  date: 'Mar 23 2024',
                  leftIconPath: Assets.icons.linkIcon.path,
                  rightIconPath: Assets.icons.linkIcon.path,
                  amount: '1.531',
                  profit: '\$234.34',
                  profitPercentage: '+0,045%',
                  actionText: 'View',
                );
              },
            );
          }),
    );
  }

  TableRowCustom _buildTrandeRow(
      {required String time,
      required String date,
      required String amount,
      required String profit,
      required String profitPercentage,
      required String actionText,
      required String leftIconPath,
      required String rightIconPath}) {
    return TableRowCustom(
      rowItems: [
        //1
        CustomRowCell(
            width: 72.0.w,
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
        //2
        CustomRowCell(
          width: 55.5,
          child: CryptoPairCustom(
            mainAxisAlignment: MainAxisAlignment.center,
            leftIcon: leftIconPath,
            rightIcon: rightIconPath,
            iconSize: 14.h,
            arrowHeight: 5.60.h,
            arrowWidth: 13.30.w,
            blur: 3.5,
            positionX: -0.7,
            borderWidth: 1.05,
          ),
        ), //3
        CustomRowCell(
          width: 55.5,
          child: Text(amount,
              style: AppStyle.regular_14, textAlign: TextAlign.start),
        ),
        //4
        CustomRowCell(
          width: 55.5,
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Text(profit, style: AppStyle.medium_14, textAlign: TextAlign.end),
            spaceH2,
            Text(
              profitPercentage,
              style: AppStyle.semibold_12.copyWith(color: AppColor.green500),
              textAlign: TextAlign.end,
            ),
          ]),
        ),
        //5
        CustomRowCell(
          width: 55.5,
          child: Text(
            actionText,
            style: AppStyle.medium_14.copyWith(color: AppColor.primaryColor),
            textAlign: TextAlign.end,
          ),
        ),
      ],
    );
  }
}
