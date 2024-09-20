// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coord_payload_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoordPayloadEntityImpl _$$CoordPayloadEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$CoordPayloadEntityImpl(
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$CoordPayloadEntityImplToJson(
        _$CoordPayloadEntityImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'notes': instance.notes,
    };
