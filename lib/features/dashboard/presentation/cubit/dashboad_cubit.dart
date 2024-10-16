import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboad_state.dart';
part 'dashboad_cubit.freezed.dart';

class DashboadCubit extends Cubit<DashboadState> {
  DashboadCubit() : super(const DashboadState());
}
