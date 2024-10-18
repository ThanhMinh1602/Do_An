import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'logged_main_state.dart';
part 'logged_main_cubit.freezed.dart';

class LoggedMainCubit extends Cubit<LoggedMainState> {
  LoggedMainCubit() : super(LoggedMainState());
  void selectMenuPage(int index) {
    emit(state.copyWith(pageIndex: index));
  }
}
