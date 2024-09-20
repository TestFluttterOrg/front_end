import 'package:coord_converter/features/data/datasource/app_datasource.dart';
import 'package:coord_converter/features/domain/entity/coord_payload_entity.dart';
import 'package:coord_converter/features/domain/model/dms_model.dart';
import 'package:coord_converter/features/domain/model/result_model.dart';
import 'package:coord_converter/features/domain/repository/app_repository.dart';

class AppRepositoryImpl extends AppRepository {
  final AppDataSource dataSource;

  AppRepositoryImpl({
    required this.dataSource,
  });

  @override
  Future<ResultModel<DMSModel>> convertCoordinates({
    required String longitude,
    required String latitude,
  }) async {
    return await dataSource.convertCoordinates(longitude, latitude);
  }

  @override
  Future<ResultModel> saveCoordinates({
    required String longitude,
    required String latitude,
    required String notes,
  }) async {
    final payload = CoordPayloadEntity(
      latitude: latitude,
      longitude: longitude,
      notes: notes,
    );
    return await dataSource.saveCoordinates(payload);
  }
}
