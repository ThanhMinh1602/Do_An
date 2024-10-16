// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<NewItemModel> get newItemModels => throw _privateConstructorUsedError;
  NewItemModel? get newItemModel => throw _privateConstructorUsedError;

  /// Create a copy of NewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsStateCopyWith<NewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res, NewsState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<NewItemModel> newItemModels,
      NewItemModel? newItemModel});
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res, $Val extends NewsState>
    implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? newItemModels = null,
    Object? newItemModel = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      newItemModels: null == newItemModels
          ? _value.newItemModels
          : newItemModels // ignore: cast_nullable_to_non_nullable
              as List<NewItemModel>,
      newItemModel: freezed == newItemModel
          ? _value.newItemModel
          : newItemModel // ignore: cast_nullable_to_non_nullable
              as NewItemModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $NewsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<NewItemModel> newItemModels,
      NewItemModel? newItemModel});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? newItemModels = null,
    Object? newItemModel = freezed,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      newItemModels: null == newItemModels
          ? _value._newItemModels
          : newItemModels // ignore: cast_nullable_to_non_nullable
              as List<NewItemModel>,
      newItemModel: freezed == newItemModel
          ? _value.newItemModel
          : newItemModel // ignore: cast_nullable_to_non_nullable
              as NewItemModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.isLoading = false,
      final List<NewItemModel> newItemModels = const [],
      this.newItemModel})
      : _newItemModels = newItemModels;

  @override
  @JsonKey()
  final bool isLoading;
  final List<NewItemModel> _newItemModels;
  @override
  @JsonKey()
  List<NewItemModel> get newItemModels {
    if (_newItemModels is EqualUnmodifiableListView) return _newItemModels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newItemModels);
  }

  @override
  final NewItemModel? newItemModel;

  @override
  String toString() {
    return 'NewsState(isLoading: $isLoading, newItemModels: $newItemModels, newItemModel: $newItemModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._newItemModels, _newItemModels) &&
            (identical(other.newItemModel, newItemModel) ||
                other.newItemModel == newItemModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_newItemModels), newItemModel);

  /// Create a copy of NewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements NewsState {
  const factory _Initial(
      {final bool isLoading,
      final List<NewItemModel> newItemModels,
      final NewItemModel? newItemModel}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  List<NewItemModel> get newItemModels;
  @override
  NewItemModel? get newItemModel;

  /// Create a copy of NewsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
