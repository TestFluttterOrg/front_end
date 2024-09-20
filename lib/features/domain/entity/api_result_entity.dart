import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result_entity.g.dart';
part 'api_result_entity.freezed.dart';

@freezed
class APIResultEntity with _$APIResultEntity {
  factory APIResultEntity({
    String? message,
  }) = _APIResultEntity;

  factory APIResultEntity.fromJson(Map<String, dynamic> json) =>
      _$APIResultEntityFromJson(json);
}