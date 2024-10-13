import 'package:bloc/bloc.dart';
import 'package:do_an_flutter/features/menu/presentation/cubit/app_menu_state.dart';

class AppMenuCubit extends Cubit<AppMenuState> {
  AppMenuCubit() : super(const AppMenuState());
  void changePage(String routerPath) {
    emit(state.copyWith(routePath: routerPath));
  }
}
