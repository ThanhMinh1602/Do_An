import 'package:do_an_flutter/core/components/blur/circle_blue_blur.dart';
import 'package:do_an_flutter/core/components/blur/circle_pink_blur.dart';
import 'package:do_an_flutter/core/components/blur/rectangle_blur.dart';
import 'package:do_an_flutter/core/components/footer/desktop_footer_custom.dart';
import 'package:do_an_flutter/core/components/footer/mobile_footer_custom.dart';
import 'package:do_an_flutter/core/components/rectangle/rectangle_backgroud.dart';
import 'package:do_an_flutter/core/extensions/builder_context_extension.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/cubit/loading_cubit.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/desktop/dt_arbitrage_opportunities_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/desktop/dt_arbitrage_platform_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/desktop/dt_get_instant_profits_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/desktop/dt_power_lowest_network_fees_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/desktop/dt_protoco_flash_loans_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/desktop/dt_trusted_by_teams_at_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/desktop/dt_video_tutorials_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/mobile/arbitrage_opportunities_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/mobile/arbitrage_platform_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/mobile/get_instant_profits_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/mobile/power_lowest_network_fees_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/mobile/protoco_flash_loans_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/mobile/trusted_by_teams_at_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/mobile/video_tutorials_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    void onTapJoinNow() {
      context.read<LoadingCubit>().onTapJoinNow();
    }

    return ListView(
      children: context.isDesktop
          ? [
              Stack(
                children: [
                  const Positioned(
                    top: -123,
                    left: -394,
                    child: RectangleBackgroud(),
                  ),
                  const Positioned(
                    top: 913,
                    left: -394,
                    child: RectangleBackgroud(),
                  ),
                  const CircleBlueBlur(
                    top: 0,
                  ),
                  const CircleBlueBlur(
                    top: 1470.13,
                  ),
                  const CirclePinkBlur(
                    top: 316,
                  ),
                  const CirclePinkBlur(
                    top: 1726.13,
                  ),
                  Column(
                    children: [
                      const SizedBox(height: 64),
                      DtArbitragePlatformWidget(
                        onTapJoinNow: onTapJoinNow,
                      ),
                      const DtVideoTutorialsWidget(),
                      const DtGetInstantProfitsWidget(),
                      const DtPowerLowestNetworkFeesWidget(),
                      const DtArbitrageOpportunitiesWidget(),
                      const DtProtocoFlashLoansWidget(),
                      const DtTrustedByTeamsAtWidget(),
                      const DesktopFooterCustom()
                    ],
                  ),
                ],
              )
            ]
          : [
              Stack(
                children: [
                  Column(
                    children: [
                      spaceH18,
                      ArbitragePlatform(
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
