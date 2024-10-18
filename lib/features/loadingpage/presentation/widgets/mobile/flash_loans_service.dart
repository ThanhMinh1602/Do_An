import 'package:do_an_flutter/core/components/blur/circle_gradient_blur.dart';
import 'package:do_an_flutter/core/components/text/gradient_text.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/utils/font_weight.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/cubit/loading_cubit.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:video_player/video_player.dart';

class FlashLoansService extends StatefulWidget {
  const FlashLoansService({super.key});

  @override
  State<FlashLoansService> createState() => _FlashLoansServiceState();
}

class _FlashLoansServiceState extends State<FlashLoansService> {
  @override
  void initState() {
    super.initState();
    context.read<LoadingCubit>().init();
  }

  @override
  void dispose() {
    context.read<LoadingCubit>().videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 48.0.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          const Positioned(bottom: 0, child: CircleGradientBlur()),
          Column(
            children: [
              GradientText(
                text: "Flash Loans Service",
                style: AppStyle.semiboldText_32,
                gradient: AppColor.buildGradient(),
              ),
              spaceH24,
              _buildVideoPlayer(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildVideoPlayer() {
    return Center(
      child: AspectRatio(
        aspectRatio: context
            .read<LoadingCubit>()
            .videoPlayerController
            .value
            .aspectRatio,
        child: Stack(
          children: [
            VideoPlayer(context.read<LoadingCubit>().videoPlayerController),
            Center(child: _buildControlButtons()),
            _buildBottomControlBar(),
          ],
        ),
      ),
    );
  }

  Widget _buildControlButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: context.read<LoadingCubit>().previousVideo,
          icon: SvgPicture.asset(Assets.icons.backVideo),
        ),
        Stack(
          children: [
            CircleAvatar(
              radius: 35.0.w,
              backgroundColor: AppColor.backgroundColor,
            ),
            GestureDetector(
              onTap: () {
                final cubit = context.read<LoadingCubit>();
                if (cubit.state.isPlaying) {
                  cubit.pauseVideo();
                } else {
                  cubit.playVideo();
                }
              },
              child: Container(
                width: 70.0.w,
                height: 70.0.w,
                padding: EdgeInsets.all(16.w),
                decoration: BoxDecoration(
                  border: GradientBoxBorder(
                    width: 8.0,
                    gradient: AppColor.buildGradient(),
                  ),
                  shape: BoxShape.circle,
                  gradient: AppColor.buildGradient(opacity: 0.6),
                ),
                child: SvgPicture.asset(
                    context.watch<LoadingCubit>().state.isPlaying
                        ? Assets.icons.pauseCircleIcon
                        : Assets.icons.playCircleIcon),
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: context.read<LoadingCubit>().nextVideo,
          icon: SvgPicture.asset(Assets.icons.nextVideo),
        ),
      ],
    );
  }

  Widget _buildBottomControlBar() {
    return Positioned(
      bottom: 12,
      left: 12.0.w,
      right: 12.0.w,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ValueListenableBuilder(
            valueListenable: context.read<LoadingCubit>().videoPlayerController,
            builder: (context, VideoPlayerValue value, child) {
              return Text(
                '${_formatDuration(value.position)} / ${_formatDuration(value.duration)}',
                style: TextStyle(
                  fontSize: 10.0.sp,
                  fontWeight: medium,
                  color: AppColor.whiteColor,
                ),
              );
            },
          ),
          spaceW8,
          Expanded(
            child: VideoProgressIndicator(
              context.read<LoadingCubit>().videoPlayerController,
              allowScrubbing: true,
              colors: const VideoProgressColors(
                playedColor: AppColor.blue700,
                bufferedColor: Colors.grey,
                backgroundColor: Colors.grey,
              ),
            ),
          ),
          spaceW8,
          SvgPicture.asset(Assets.icons.zoomFullVideo),
        ],
      ),
    );
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '${duration.inHours > 0 ? '${twoDigits(duration.inHours)}:' : ''}$minutes:$seconds';
  }
}
