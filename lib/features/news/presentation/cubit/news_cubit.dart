import 'package:bloc/bloc.dart';
import 'package:do_an_flutter/core/navigation/navigator.dart';
import 'package:do_an_flutter/features/news/data/models/new_item_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_state.dart';
part 'news_cubit.freezed.dart';

class NewsCubit extends Cubit<NewsState> {
  final AppNavigator navigator;
  NewsCubit({required this.navigator}) : super(const NewsState());
  void onInit() {
    emit(state.copyWith(isLoading: true));
    final datas = newItemModels;
    emit(state.copyWith(isLoading: false, newItemModels: datas));
  }

  void newDetail(NewItemModel newItemModel) {
    navigator.push(screen: ScreenType.newsDetailPage(newItemModel));
  }
}
