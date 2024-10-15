import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_detail_state.dart';
part 'news_detail_cubit.freezed.dart';

class NewsDetailCubit extends Cubit<NewsDetailState> {
  NewsDetailCubit() : super(const NewsDetailState());
}
