import 'package:do_an_flutter/core/components/blur/circle_blue_blur.dart';
import 'package:do_an_flutter/core/components/blur/circle_pink_blur.dart';
import 'package:do_an_flutter/core/components/blur/rectangle_blur.dart';
import 'package:do_an_flutter/core/components/footer/desktop_footer_custom.dart';
import 'package:do_an_flutter/core/components/footer/mobile_footer_custom.dart';
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
                  const CirclePinkBlur(top: 0),
                  const CirclePinkBlur(top: 1946),
                  const Positioned(
                      left: -200, top: -80, child: RectangleBlur(width: 3000)),
                  const Positioned(
                      left: -600, top: 270, child: RectangleBlur(width: 6000)),
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
                  const CircleBlueBlur(
                    top: -256,
                  ),
                  const CircleBlueBlur(top: 1400),
                  const CircleBlueBlur(top: 3747),
                  const CirclePinkBlur(top: 3433),
                  const CirclePinkBlur(top: 4355),
                ],
              )
            ]
          : [
              Stack(
                children: [
                  CircleBlueBlur(
                    top: -256.h,
                  ),
                  CircleBlueBlur(
                    top: 2833.h,
                    width: 172,
                    height: 172,
                    left: 172 / 2,
                  ),
                  CircleBlueBlur(
                    top: 3546.h,
                    width: 172,
                    height: 172,
                    left: -172 / 2,
                  ),
                  CirclePinkBlur(
                    top: 35.h,
                  ),
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
