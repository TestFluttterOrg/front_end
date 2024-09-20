// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_result_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

APIResultEntity _$APIResultEntityFromJson(Map<String, dynamic> json) {
  return _APIResultEntity.fromJson(json);
}

/// @nodoc
mixin _$APIResultEntity {
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this APIResultEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of APIResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $APIResultEntityCopyWith<APIResultEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $APIResultEntityCopyWith<$Res> {
  factory $APIResultEntityCopyWith(
          APIResultEntity value, $Res Function(APIResultEntity) then) =
      _$APIResultEntityCopyWithImpl<$Res, APIResultEntity>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$APIResultEntityCopyWithImpl<$Res, $Val extends APIResultEntity>
    implements $APIResultEntityCopyWith<$Res> {
  _$APIResultEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of APIResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$APIResultEntityImplCopyWith<$Res>
    implements $APIResultEntityCopyWith<$Res> {
  factory _$$APIResultEntityImplCopyWith(_$APIResultEntityImpl value,
          $Res Function(_$APIResultEntityImpl) then) =
      __$$APIResultEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$APIResultEntityImplCopyWithImpl<$Res>
    extends _$APIResultEntityCopyWithImpl<$Res, _$APIResultEntityImpl>
    implements _$$APIResultEntityImplCopyWith<$Res> {
  __$$APIResultEntityImplCopyWithImpl(
      _$APIResultEntityImpl _value, $Res Function(_$APIResultEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of APIResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$APIResultEntityImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$APIResultEntityImpl implements _APIResultEntity {
  _$APIResultEntityImpl({this.message});

  factory _$APIResultEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$APIResultEntityImplFromJson(json);

  @override
  final String? message;

  @override
  String toString() {
    return 'APIResultEntity(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$APIResultEntityImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of APIResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$APIResultEntityImplCopyWith<_$APIResultEntityImpl> get copyWith =>
      __$$APIResultEntityImplCopyWithImpl<_$APIResultEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$APIResultEntityImplToJson(
      this,
    );
  }
}

abstract class _APIResultEntity implements APIResultEntity {
  factory _APIResultEntity({final String? message}) = _$APIResultEntityImpl;

  factory _APIResultEntity.fromJson(Map<String, dynamic> json) =
      _$APIResultEntityImpl.fromJson;

  @override
  String? get message;

  /// Create a copy of APIResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$APIResultEntityImplCopyWith<_$APIResultEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
