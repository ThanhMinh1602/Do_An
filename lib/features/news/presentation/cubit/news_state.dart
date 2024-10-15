part of 'news_cubit.dart';

@freezed
abstract class NewsState with _$NewsState {
  const factory NewsState({
    @Default(false) bool isLoading,
    @Default([]) List<NewItemModel> newItemModels,
  }) = _Initial;
}
