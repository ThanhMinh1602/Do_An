import 'package:do_an_flutter/features/trading/presentation/widgets/trading_list_card_widget.dart';
import 'package:flutter/material.dart';

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
    return const Column(
      children: [
        TradingListCardWidget(),
      ],
    );
  }
}
