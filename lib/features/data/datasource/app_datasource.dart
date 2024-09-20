import 'package:coord_converter/features/domain/model/dms_model.dart';
import 'package:coord_converter/features/domain/model/result_model.dart';
import 'package:coordinate_converter/coordinate_converter.dart';

abstract class AppDataSource {
  Future<ResultModel<DMSModel>> convertCoordinates(
    String longitude,
    String latitude,
  );
}

class AppDataSourceImpl extends AppDataSource {
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
}
