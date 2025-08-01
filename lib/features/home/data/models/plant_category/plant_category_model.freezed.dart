// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plant_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlantCategory _$PlantCategoryFromJson(Map<String, dynamic> json) {
  return _PlantCategory.fromJson(json);
}

/// @nodoc
mixin _$PlantCategory {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  PlantImage get image => throw _privateConstructorUsedError;

  /// Serializes this PlantCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlantCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlantCategoryCopyWith<PlantCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantCategoryCopyWith<$Res> {
  factory $PlantCategoryCopyWith(
          PlantCategory value, $Res Function(PlantCategory) then) =
      _$PlantCategoryCopyWithImpl<$Res, PlantCategory>;
  @useResult
  $Res call({int id, String title, PlantImage image});

  $PlantImageCopyWith<$Res> get image;
}

/// @nodoc
class _$PlantCategoryCopyWithImpl<$Res, $Val extends PlantCategory>
    implements $PlantCategoryCopyWith<$Res> {
  _$PlantCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlantCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
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
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as PlantImage,
    ) as $Val);
  }

  /// Create a copy of PlantCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlantImageCopyWith<$Res> get image {
    return $PlantImageCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlantCategoryImplCopyWith<$Res>
    implements $PlantCategoryCopyWith<$Res> {
  factory _$$PlantCategoryImplCopyWith(
          _$PlantCategoryImpl value, $Res Function(_$PlantCategoryImpl) then) =
      __$$PlantCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, PlantImage image});

  @override
  $PlantImageCopyWith<$Res> get image;
}

/// @nodoc
class __$$PlantCategoryImplCopyWithImpl<$Res>
    extends _$PlantCategoryCopyWithImpl<$Res, _$PlantCategoryImpl>
    implements _$$PlantCategoryImplCopyWith<$Res> {
  __$$PlantCategoryImplCopyWithImpl(
      _$PlantCategoryImpl _value, $Res Function(_$PlantCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlantCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
  }) {
    return _then(_$PlantCategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as PlantImage,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlantCategoryImpl implements _PlantCategory {
  const _$PlantCategoryImpl(
      {required this.id, required this.title, required this.image});

  factory _$PlantCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlantCategoryImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final PlantImage image;

  @override
  String toString() {
    return 'PlantCategory(id: $id, title: $title, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlantCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, image);

  /// Create a copy of PlantCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlantCategoryImplCopyWith<_$PlantCategoryImpl> get copyWith =>
      __$$PlantCategoryImplCopyWithImpl<_$PlantCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlantCategoryImplToJson(
      this,
    );
  }
}

abstract class _PlantCategory implements PlantCategory {
  const factory _PlantCategory(
      {required final int id,
      required final String title,
      required final PlantImage image}) = _$PlantCategoryImpl;

  factory _PlantCategory.fromJson(Map<String, dynamic> json) =
      _$PlantCategoryImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  PlantImage get image;

  /// Create a copy of PlantCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlantCategoryImplCopyWith<_$PlantCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlantImage _$PlantImageFromJson(Map<String, dynamic> json) {
  return _PlantImage.fromJson(json);
}

/// @nodoc
mixin _$PlantImage {
  String get url => throw _privateConstructorUsedError;

  /// Serializes this PlantImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlantImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlantImageCopyWith<PlantImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantImageCopyWith<$Res> {
  factory $PlantImageCopyWith(
          PlantImage value, $Res Function(PlantImage) then) =
      _$PlantImageCopyWithImpl<$Res, PlantImage>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$PlantImageCopyWithImpl<$Res, $Val extends PlantImage>
    implements $PlantImageCopyWith<$Res> {
  _$PlantImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlantImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlantImageImplCopyWith<$Res>
    implements $PlantImageCopyWith<$Res> {
  factory _$$PlantImageImplCopyWith(
          _$PlantImageImpl value, $Res Function(_$PlantImageImpl) then) =
      __$$PlantImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$PlantImageImplCopyWithImpl<$Res>
    extends _$PlantImageCopyWithImpl<$Res, _$PlantImageImpl>
    implements _$$PlantImageImplCopyWith<$Res> {
  __$$PlantImageImplCopyWithImpl(
      _$PlantImageImpl _value, $Res Function(_$PlantImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlantImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$PlantImageImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlantImageImpl implements _PlantImage {
  const _$PlantImageImpl({required this.url});

  factory _$PlantImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlantImageImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'PlantImage(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlantImageImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of PlantImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlantImageImplCopyWith<_$PlantImageImpl> get copyWith =>
      __$$PlantImageImplCopyWithImpl<_$PlantImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlantImageImplToJson(
      this,
    );
  }
}

abstract class _PlantImage implements PlantImage {
  const factory _PlantImage({required final String url}) = _$PlantImageImpl;

  factory _PlantImage.fromJson(Map<String, dynamic> json) =
      _$PlantImageImpl.fromJson;

  @override
  String get url;

  /// Create a copy of PlantImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlantImageImplCopyWith<_$PlantImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
