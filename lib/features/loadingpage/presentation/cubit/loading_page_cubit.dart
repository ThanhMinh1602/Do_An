import 'package:bloc/bloc.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/cubit/loading_page_state.dart';
import 'package:video_player/video_player.dart';

class LoadingPageCubit extends Cubit<LoadingPageState> {
  LoadingPageCubit() : super(const LoadingPageState());

  //video
  late VideoPlayerController videoPlayerController;
  void init() {
    //init video url
    videoPlayerController = VideoPlayerController.network(
      'https://cdn.pixabay.com/video/2022/02/17/108013-678971340_medium.mp4',
    )..initialize();
    playVideo();
  }
}

extension VideoPlayerExtension on LoadingPageCubit {
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

extension PowerLowestNetworkFees on LoadingPageCubit {}
