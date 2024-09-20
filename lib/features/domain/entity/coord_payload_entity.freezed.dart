// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coord_payload_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CoordPayloadEntity _$CoordPayloadEntityFromJson(Map<String, dynamic> json) {
  return _CoordPayloadEntity.fromJson(json);
}

/// @nodoc
mixin _$CoordPayloadEntity {
  String? get latitude => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  /// Serializes this CoordPayloadEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoordPayloadEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoordPayloadEntityCopyWith<CoordPayloadEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordPayloadEntityCopyWith<$Res> {
  factory $CoordPayloadEntityCopyWith(
          CoordPayloadEntity value, $Res Function(CoordPayloadEntity) then) =
      _$CoordPayloadEntityCopyWithImpl<$Res, CoordPayloadEntity>;
  @useResult
  $Res call({String? latitude, String? longitude, String? notes});
}

/// @nodoc
class _$CoordPayloadEntityCopyWithImpl<$Res, $Val extends CoordPayloadEntity>
    implements $CoordPayloadEntityCopyWith<$Res> {
  _$CoordPayloadEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoordPayloadEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoordPayloadEntityImplCopyWith<$Res>
    implements $CoordPayloadEntityCopyWith<$Res> {
  factory _$$CoordPayloadEntityImplCopyWith(_$CoordPayloadEntityImpl value,
          $Res Function(_$CoordPayloadEntityImpl) then) =
      __$$CoordPayloadEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? latitude, String? longitude, String? notes});
}

/// @nodoc
class __$$CoordPayloadEntityImplCopyWithImpl<$Res>
    extends _$CoordPayloadEntityCopyWithImpl<$Res, _$CoordPayloadEntityImpl>
    implements _$$CoordPayloadEntityImplCopyWith<$Res> {
  __$$CoordPayloadEntityImplCopyWithImpl(_$CoordPayloadEntityImpl _value,
      $Res Function(_$CoordPayloadEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoordPayloadEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? notes = freezed,
  }) {
    return _then(_$CoordPayloadEntityImpl(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoordPayloadEntityImpl implements _CoordPayloadEntity {
  _$CoordPayloadEntityImpl({this.latitude, this.longitude, this.notes});

  factory _$CoordPayloadEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoordPayloadEntityImplFromJson(json);

  @override
  final String? latitude;
  @override
  final String? longitude;
  @override
  final String? notes;

  @override
  String toString() {
    return 'CoordPayloadEntity(latitude: $latitude, longitude: $longitude, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoordPayloadEntityImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, notes);

  /// Create a copy of CoordPayloadEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoordPayloadEntityImplCopyWith<_$CoordPayloadEntityImpl> get copyWith =>
      __$$CoordPayloadEntityImplCopyWithImpl<_$CoordPayloadEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoordPayloadEntityImplToJson(
      this,
    );
  }
}

abstract class _CoordPayloadEntity implements CoordPayloadEntity {
  factory _CoordPayloadEntity(
      {final String? latitude,
      final String? longitude,
      final String? notes}) = _$CoordPayloadEntityImpl;

  factory _CoordPayloadEntity.fromJson(Map<String, dynamic> json) =
      _$CoordPayloadEntityImpl.fromJson;

  @override
  String? get latitude;
  @override
  String? get longitude;
  @override
  String? get notes;

  /// Create a copy of CoordPayloadEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoordPayloadEntityImplCopyWith<_$CoordPayloadEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
