import 'package:do_an_flutter/core/components/blur/circle_gradient_blur.dart';
import 'package:do_an_flutter/core/components/text/gradient_text.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/utils/font_weight.dart';
import 'package:do_an_flutter/core/utils/format_string_utils.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/cubit/loading_cubit.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:video_player/video_player.dart';

class DtVideoTutorialsWidget extends StatefulWidget {
  const DtVideoTutorialsWidget({super.key});

  @override
  State<DtVideoTutorialsWidget> createState() => _VideoTutorialsWidgetState();
}

class _VideoTutorialsWidgetState extends State<DtVideoTutorialsWidget> {
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
          const Positioned(
              bottom: 0,
              child: CircleGradientBlur(
                width: 414,
                height: 414,
              )),
          Column(
            children: [
              GradientText(
                text: "Galaxy Video Tutorials",
                style: AppStyle.bold_36,
                gradient: AppColor.buildGradient(),
              ),
              const SizedBox(height: 24.0),
              _buildVideoPlayer(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildVideoPlayer() {
    return Center(
      child: SizedBox(
        width: 736,
        height: 418,
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
            const CircleAvatar(
              radius: 35.0,
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
                width: 70.0,
                height: 70.0,
                padding: const EdgeInsets.all(16.0),
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
      left: 12.0,
      right: 12.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ValueListenableBuilder(
            valueListenable: context.read<LoadingCubit>().videoPlayerController,
            builder: (context, VideoPlayerValue value, child) {
              return Text(
                '${FormatStringUtils.formatDurationVideo(value.position)} / ${FormatStringUtils.formatDurationVideo(value.duration)}',
                style: const TextStyle(
                  fontSize: 10.0, 
                  fontWeight: medium,
                  color: AppColor.whiteColor,
                ),
              );
            },
          ),
          const SizedBox(width: 8.0),
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
          const SizedBox(width: 8.0),
          SvgPicture.asset(Assets.icons.zoomFullVideo),
        ],
      ),
    );
  }
}
