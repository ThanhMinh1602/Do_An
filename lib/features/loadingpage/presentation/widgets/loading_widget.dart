import 'package:do_an_flutter/core/extensions/builder_context_extension.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/desktop/dt_arbitrage_opportunities_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/desktop/dt_arbitrage_platform_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/desktop/dt_footer_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/desktop/dt_get_instant_profits_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/desktop/dt_power_lowest_network_fees_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/desktop/dt_protoco_flash_loans_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/desktop/dt_trusted_by_teams_at_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/desktop/dt_video_tutorials_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/mobile/arbitrage_opportunities_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/mobile/arbitrage_platform_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/mobile/footer_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/mobile/get_instant_profits_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/mobile/power_lowest_network_fees_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/mobile/protoco_flash_loans_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/mobile/trusted_by_teams_at_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/mobile/video_tutorials_widget.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: context.isDesktop
          ? [
              const SizedBox(height: 64),
              const DtArbitragePlatformWidget(),
              const DtVideoTutorialsWidget(),
              const DtGetInstantProfitsWidget(),
              const DtPowerLowestNetworkFeesWidget(),
              const DtArbitrageOpportunitiesWidget(),
              const DtProtocoFlashLoansWidget(),
              const DtTrustedByTeamsAtWidget(),
              const DtFooterWidget()
            ]
          : [
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
    );
  }
}
