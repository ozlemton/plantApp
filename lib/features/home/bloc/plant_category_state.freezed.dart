// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plant_category_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlantCategoryState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<PlantCategory> get categories => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of PlantCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlantCategoryStateCopyWith<PlantCategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantCategoryStateCopyWith<$Res> {
  factory $PlantCategoryStateCopyWith(
          PlantCategoryState value, $Res Function(PlantCategoryState) then) =
      _$PlantCategoryStateCopyWithImpl<$Res, PlantCategoryState>;
  @useResult
  $Res call({bool isLoading, List<PlantCategory> categories, String? error});
}

/// @nodoc
class _$PlantCategoryStateCopyWithImpl<$Res, $Val extends PlantCategoryState>
    implements $PlantCategoryStateCopyWith<$Res> {
  _$PlantCategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlantCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? categories = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<PlantCategory>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlantCategoryStateImplCopyWith<$Res>
    implements $PlantCategoryStateCopyWith<$Res> {
  factory _$$PlantCategoryStateImplCopyWith(_$PlantCategoryStateImpl value,
          $Res Function(_$PlantCategoryStateImpl) then) =
      __$$PlantCategoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<PlantCategory> categories, String? error});
}

/// @nodoc
class __$$PlantCategoryStateImplCopyWithImpl<$Res>
    extends _$PlantCategoryStateCopyWithImpl<$Res, _$PlantCategoryStateImpl>
    implements _$$PlantCategoryStateImplCopyWith<$Res> {
  __$$PlantCategoryStateImplCopyWithImpl(_$PlantCategoryStateImpl _value,
      $Res Function(_$PlantCategoryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlantCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? categories = null,
    Object? error = freezed,
  }) {
    return _then(_$PlantCategoryStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<PlantCategory>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PlantCategoryStateImpl implements _PlantCategoryState {
  const _$PlantCategoryStateImpl(
      {required this.isLoading,
      required final List<PlantCategory> categories,
      this.error})
      : _categories = categories;

  @override
  final bool isLoading;
  final List<PlantCategory> _categories;
  @override
  List<PlantCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'PlantCategoryState(isLoading: $isLoading, categories: $categories, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlantCategoryStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_categories), error);

  /// Create a copy of PlantCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlantCategoryStateImplCopyWith<_$PlantCategoryStateImpl> get copyWith =>
      __$$PlantCategoryStateImplCopyWithImpl<_$PlantCategoryStateImpl>(
          this, _$identity);
}

abstract class _PlantCategoryState implements PlantCategoryState {
  const factory _PlantCategoryState(
      {required final bool isLoading,
      required final List<PlantCategory> categories,
      final String? error}) = _$PlantCategoryStateImpl;

  @override
  bool get isLoading;
  @override
  List<PlantCategory> get categories;
  @override
  String? get error;

  /// Create a copy of PlantCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlantCategoryStateImplCopyWith<_$PlantCategoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
