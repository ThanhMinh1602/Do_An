import 'package:do_an_flutter/core/components/blur/circle_blue_blur.dart';
import 'package:do_an_flutter/core/components/blur/circle_pink_blur.dart';
import 'package:do_an_flutter/core/components/footer/mobile_footer_custom.dart';
import 'package:do_an_flutter/core/components/rectangle/rectangle_backgroud.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/cubit/loading_cubit.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/mobile/arbitrage_opportunities_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/mobile/arbitrage_platform_mobile_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/mobile/get_instant_profits_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/mobile/power_lowest_network_fees_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/mobile/protoco_flash_loans_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/mobile/trusted_by_teams_at_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/mobile/video_tutorials_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoadingMobile extends StatelessWidget {
  const LoadingMobile({super.key});

  @override
  Widget build(BuildContext context) {
    void onTapJoinNow() {
      context.read<LoadingCubit>().onTapJoinNow();
    }

    return ListView(
      children: [
        Stack(
          children: [
            const Positioned(
              top: 43,
              left: -94,
              child: RectangleBackgroud(),
            ),
            const Positioned(
              top: 213,
              left: -10,
              child: RectangleBackgroud(),
            ),
            const CircleBlueBlur(
              top: -400,
              left: -300,
            ),
            const CircleBlueBlur(
              top: -1570.13,
              left: -200,
            ),
            const CirclePinkBlur(
              top: -316,
            ),
            Column(
              children: [
                spaceH18,
                ArbitragePlatformMobile(
                  onTapJoinNow: onTapJoinNow,
                ),
                const VideoTutorialsWidget(),
                const GetInstantProfitsWidget(),
                const PowerLowestNetworkFeesWidget(),
                const ArbitrageOpportunitiesWidget(),
                const ProtocoFlashLoansWidget(),
                const TrustedByTeamsAtWidget(),
                const MobileFooterCustom()
              ],
            ),
          ],
        ),
      ],
    );
  }
}
