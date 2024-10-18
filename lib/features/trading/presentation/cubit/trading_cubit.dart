import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trading_state.dart';
part 'trading_cubit.freezed.dart';

class TradingCubit extends Cubit<TradingState> {
  TradingCubit() : super(const TradingState());
}
