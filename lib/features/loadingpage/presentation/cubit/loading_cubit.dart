import 'package:bloc/bloc.dart';
import 'package:do_an_flutter/core/navigation/navigator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_player/video_player.dart';

part 'loading_state.dart';
part 'loading_cubit.freezed.dart';

class LoadingCubit extends Cubit<LoadingState> {
  final AppNavigator navigator;
  LoadingCubit({required this.navigator}) : super(const LoadingState());
  //video
  late VideoPlayerController videoPlayerController;
  void init() {
    //init video url
    videoPlayerController = VideoPlayerController.network(
      'https://cdn.pixabay.com/video/2022/02/17/108013-678971340_medium.mp4',
    )..initialize();
    playVideo();
  }

  void onTapJoinNow() {
    navigator.push(screen: const ScreenType.registerPage());
  }
}

extension VideoPlayerExtension on LoadingCubit {
  void togglePlayPause() {
    emit(state.copyWith(isPlaying: !state.isPlaying));
  }

  void playVideo() {
    videoPlayerController.play();
    emit(state.copyWith(isPlaying: true));
  }

  void pauseVideo() {
    videoPlayerController.pause();
    emit(state.copyWith(isPlaying: false));
  }

  void nextVideo() {}

  void previousVideo() {}
}

extension PowerLowestNetworkFees on LoadingCubit {}
