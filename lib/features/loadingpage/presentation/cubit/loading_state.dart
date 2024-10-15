part of 'loading_cubit.dart';

@freezed
abstract class LoadingState with _$LoadingState {
  const factory LoadingState({
    @Default(true) bool isLoading,
    @Default(true) bool isPlaying,
  }) = _Initial;
}
