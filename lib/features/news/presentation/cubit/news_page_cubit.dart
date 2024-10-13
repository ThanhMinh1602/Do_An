import 'package:bloc/bloc.dart';
import 'package:do_an_flutter/features/news/presentation/cubit/news_page_state.dart';

class NewsPageCubit extends Cubit<NewsPageState> {
  NewsPageCubit() : super(const NewsPageState());
}
