part of 'logged_main_cubit.dart';

@freezed
abstract class LoggedMainState with _$LoggedMainState {
  factory LoggedMainState({@Default(0) pageIndex}) = _Initial;
}
