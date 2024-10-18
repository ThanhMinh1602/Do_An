import 'package:do_an_flutter/core/res/responsive.dart';
import 'package:do_an_flutter/features/trading/presentation/bingding/trading_bingding.dart';
import 'package:do_an_flutter/features/trading/presentation/page/trading_desktop.dart';
import 'package:do_an_flutter/features/trading/presentation/page/trading_mobile.dart';
import 'package:do_an_flutter/features/trading/presentation/page/trading_tab.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TradingPage extends StatelessWidget {
  const TradingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BlocProvider(
      create: TradingBingding.generateCubit,
      child: ResponsiveSystem(
        mobile: TradingMobile(),
        desktop: TradingDesktop(),
        tablet: TradingTab(),
      ),
    );
  }
}
