import 'package:do_an_flutter/core/components/appbar/app_bar_cuastom.dart';
import 'package:do_an_flutter/features/menu/presentation/page/app_menu.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/arbitrage_opportunities_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/arbitrage_platform_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/footer_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/get_instant_profits_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/power_lowest_network_fees_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/protoco_flash_loans_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/trusted_by_teams_at_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/video_tutorials_widget.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final route = ModalRoute.of(context);
    print('Accessing route: $route');
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBarCustom(
        context,
      ),
      drawer: const AppMenu(),
      body: ListView(
        children: [
          spaceH18,
          const ArbitragePlatform(),
          const VideoTutorialsWidget(),
          const GetInstantProfitsWidget(),
          const PowerLowestNetworkFeesWidget(),
          const ArbitrageOpportunitiesWidget(),
          const ProtocoFlashLoansWidget(),
          const TrustedByTeamsAtWidget(),
          const FooterWidget()
        ],
      ),
    );
  }
}
