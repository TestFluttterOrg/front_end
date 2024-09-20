import 'package:coord_converter/features/data/api/coord_client.dart';
import 'package:coord_converter/features/domain/entity/coord_payload_entity.dart';
import 'package:coord_converter/features/domain/model/dms_model.dart';
import 'package:coord_converter/features/domain/model/result_model.dart';
import 'package:coordinate_converter/coordinate_converter.dart';

abstract class AppDataSource {
  Future<ResultModel<DMSModel>> convertCoordinates(
    String longitude,
    String latitude,
  );
  
  Future<ResultModel> saveCoordinates(CoordPayloadEntity payload);
}

class AppDataSourceImpl extends AppDataSource {
  final CoordClient client;
  AppDataSourceImpl({required this.client});

  @override
  Future<ResultModel<DMSModel>> convertCoordinates(
    String longitude,
    String latitude,
  ) async {
    try {
      final lat = double.parse(latitude);
      final lon = double.parse(longitude);
      final ddCoords = DDCoordinates(
        latitude: lat,
        longitude: lon,
      );
      final data = ddCoords.toDMS();
      return ResultModel(
        isSuccess: true,
        data: DMSModel(
          latitudeDMS: data.latitudeToStringAsFixed(4),
          longitudeDMS: data.longitudeToStringAsFixed(4),
        ),
      );
    } catch (e) {
      return const ResultModel(
        isSuccess: false,
        message: "Failed to convert coordinates",
      );
    }
  }

  @override
  Future<ResultModel> saveCoordinates(CoordPayloadEntity payload) async {
    try {
      final res = await client.saveCoordinates(payload);
      if (res.response.statusCode == 200) {
        return const ResultModel(
          isSuccess: true,
          message: "Coordinate successfully saved!"
        );
      }
      else {
        return const ResultModel(
          isSuccess: false,
          message: "Failed to save",
        );
      }
    } catch (_) {
      return const ResultModel(
        isSuccess: false,
        message: "Failed to save",
      );
    }
  }
}
