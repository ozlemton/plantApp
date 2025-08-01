// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blog_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlogItem _$BlogItemFromJson(Map<String, dynamic> json) {
  return _BlogItem.fromJson(json);
}

/// @nodoc
mixin _$BlogItem {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_uri')
  String get imageUri => throw _privateConstructorUsedError;

  /// Serializes this BlogItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlogItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlogItemCopyWith<BlogItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogItemCopyWith<$Res> {
  factory $BlogItemCopyWith(BlogItem value, $Res Function(BlogItem) then) =
      _$BlogItemCopyWithImpl<$Res, BlogItem>;
  @useResult
  $Res call(
      {int id, String title, @JsonKey(name: 'image_uri') String imageUri});
}

/// @nodoc
class _$BlogItemCopyWithImpl<$Res, $Val extends BlogItem>
    implements $BlogItemCopyWith<$Res> {
  _$BlogItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlogItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imageUri = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUri: null == imageUri
          ? _value.imageUri
          : imageUri // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlogItemImplCopyWith<$Res>
    implements $BlogItemCopyWith<$Res> {
  factory _$$BlogItemImplCopyWith(
          _$BlogItemImpl value, $Res Function(_$BlogItemImpl) then) =
      __$$BlogItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String title, @JsonKey(name: 'image_uri') String imageUri});
}

/// @nodoc
class __$$BlogItemImplCopyWithImpl<$Res>
    extends _$BlogItemCopyWithImpl<$Res, _$BlogItemImpl>
    implements _$$BlogItemImplCopyWith<$Res> {
  __$$BlogItemImplCopyWithImpl(
      _$BlogItemImpl _value, $Res Function(_$BlogItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlogItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imageUri = null,
  }) {
    return _then(_$BlogItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUri: null == imageUri
          ? _value.imageUri
          : imageUri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlogItemImpl implements _BlogItem {
  const _$BlogItemImpl(
      {required this.id,
      required this.title,
      @JsonKey(name: 'image_uri') required this.imageUri});

  factory _$BlogItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlogItemImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  @JsonKey(name: 'image_uri')
  final String imageUri;

  @override
  String toString() {
    return 'BlogItem(id: $id, title: $title, imageUri: $imageUri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUri, imageUri) ||
                other.imageUri == imageUri));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, imageUri);

  /// Create a copy of BlogItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogItemImplCopyWith<_$BlogItemImpl> get copyWith =>
      __$$BlogItemImplCopyWithImpl<_$BlogItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlogItemImplToJson(
      this,
    );
  }
}

abstract class _BlogItem implements BlogItem {
  const factory _BlogItem(
          {required final int id,
          required final String title,
          @JsonKey(name: 'image_uri') required final String imageUri}) =
      _$BlogItemImpl;

  factory _BlogItem.fromJson(Map<String, dynamic> json) =
      _$BlogItemImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  @JsonKey(name: 'image_uri')
  String get imageUri;

  /// Create a copy of BlogItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlogItemImplCopyWith<_$BlogItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
