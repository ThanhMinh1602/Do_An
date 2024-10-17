import 'package:do_an_flutter/core/components/card/gradient_container_custom.dart';
import 'package:do_an_flutter/core/components/table/table_pagination.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:flutter/material.dart';

const List<double> columnWidths = [72.0, 55.5, 55.5, 55.5, 55.5];

class TableCustom extends StatefulWidget {
  final double? height;
  final double? width;
  final Widget header;
  final Widget Function(int page)
      bodyBuilder; // Thay đổi để nhận một hàm bodyBuilder
  final int totalItems; // Tổng số mục
  final int itemsPerPage; // Số mục trên mỗi trang

  const TableCustom({
    super.key,
    this.height,
    this.width,
    required this.header,
    required this.bodyBuilder,
    required this.totalItems,
    this.itemsPerPage = 10,
  });

  @override
  // ignore: library_private_types_in_public_api
  _TableCustomState createState() => _TableCustomState();
}

class _TableCustomState extends State<TableCustom> {
  int currentPage = 1;

  int get totalPages => (widget.totalItems / widget.itemsPerPage).ceil();

  @override
  Widget build(BuildContext context) {
    return GradientContainerCustom(
      padding: const EdgeInsets.all(0),
      borderGradient: AppColor.buildGradient(opacity: 0.1),
      gradient: AppColor.buildGradient(opacity: 0.05),
      height: widget.height,
      width: widget.width ?? double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              children: [
                widget.header,
                Expanded(
                  child: widget.bodyBuilder(currentPage),
                ),
              ],
            ),
          ),
          TablePagination(
            currentPage: currentPage,
            totalPages: totalPages,
            onNext: () {
              if (currentPage < totalPages) {
                setState(() {
                  currentPage++;
                });
              }
            },
            onPrevious: () {
              if (currentPage > 1) {
                setState(() {
                  currentPage--;
                });
              }
            },
          )
        ],
      ),
    );
  }
}
