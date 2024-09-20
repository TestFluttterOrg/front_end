import 'package:freezed_annotation/freezed_annotation.dart';

part 'coord_payload_entity.g.dart';
part 'coord_payload_entity.freezed.dart';

@freezed
class CoordPayloadEntity with _$CoordPayloadEntity {
  factory CoordPayloadEntity({
    String? latitude,
    String? longitude,
    String? notes,
  }) = _CoordPayloadEntity;

  factory CoordPayloadEntity.fromJson(Map<String, dynamic> json) =>
      _$CoordPayloadEntityFromJson(json);
}