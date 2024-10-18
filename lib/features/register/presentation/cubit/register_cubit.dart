import 'package:bloc/bloc.dart';
import 'package:do_an_flutter/core/navigation/navigator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.dart';
part 'register_cubit.freezed.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final AppNavigator navigator;
  RegisterCubit({required this.navigator}) : super(const RegisterState());

  void onTapRegister() {
    navigator.push(screen: const ScreenType.loggedMainPage());
  }
}
