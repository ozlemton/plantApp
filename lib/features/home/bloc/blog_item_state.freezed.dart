// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blog_item_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BlogItemState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<BlogItem> get blogs => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of BlogItemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlogItemStateCopyWith<BlogItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogItemStateCopyWith<$Res> {
  factory $BlogItemStateCopyWith(
          BlogItemState value, $Res Function(BlogItemState) then) =
      _$BlogItemStateCopyWithImpl<$Res, BlogItemState>;
  @useResult
  $Res call({bool isLoading, List<BlogItem> blogs, String? error});
}

/// @nodoc
class _$BlogItemStateCopyWithImpl<$Res, $Val extends BlogItemState>
    implements $BlogItemStateCopyWith<$Res> {
  _$BlogItemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlogItemState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? blogs = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      blogs: null == blogs
          ? _value.blogs
          : blogs // ignore: cast_nullable_to_non_nullable
              as List<BlogItem>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlogItemStateImplCopyWith<$Res>
    implements $BlogItemStateCopyWith<$Res> {
  factory _$$BlogItemStateImplCopyWith(
          _$BlogItemStateImpl value, $Res Function(_$BlogItemStateImpl) then) =
      __$$BlogItemStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<BlogItem> blogs, String? error});
}

/// @nodoc
class __$$BlogItemStateImplCopyWithImpl<$Res>
    extends _$BlogItemStateCopyWithImpl<$Res, _$BlogItemStateImpl>
    implements _$$BlogItemStateImplCopyWith<$Res> {
  __$$BlogItemStateImplCopyWithImpl(
      _$BlogItemStateImpl _value, $Res Function(_$BlogItemStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlogItemState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? blogs = null,
    Object? error = freezed,
  }) {
    return _then(_$BlogItemStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      blogs: null == blogs
          ? _value._blogs
          : blogs // ignore: cast_nullable_to_non_nullable
              as List<BlogItem>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BlogItemStateImpl implements _BlogItemState {
  const _$BlogItemStateImpl(
      {required this.isLoading,
      required final List<BlogItem> blogs,
      this.error})
      : _blogs = blogs;

  @override
  final bool isLoading;
  final List<BlogItem> _blogs;
  @override
  List<BlogItem> get blogs {
    if (_blogs is EqualUnmodifiableListView) return _blogs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blogs);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'BlogItemState(isLoading: $isLoading, blogs: $blogs, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogItemStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._blogs, _blogs) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_blogs), error);

  /// Create a copy of BlogItemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogItemStateImplCopyWith<_$BlogItemStateImpl> get copyWith =>
      __$$BlogItemStateImplCopyWithImpl<_$BlogItemStateImpl>(this, _$identity);
}

abstract class _BlogItemState implements BlogItemState {
  const factory _BlogItemState(
      {required final bool isLoading,
      required final List<BlogItem> blogs,
      final String? error}) = _$BlogItemStateImpl;

  @override
  bool get isLoading;
  @override
  List<BlogItem> get blogs;
  @override
  String? get error;

  /// Create a copy of BlogItemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlogItemStateImplCopyWith<_$BlogItemStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
