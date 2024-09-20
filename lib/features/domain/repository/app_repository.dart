import 'package:coord_converter/features/domain/model/dms_model.dart';
import 'package:coord_converter/features/domain/model/result_model.dart';

abstract class AppRepository {
  Future<ResultModel<DMSModel>> convertCoordinates({
    required String longitude,
    required String latitude,
  });

  Future<ResultModel> saveCoordinates({
    required String longitude,
    required String latitude,
    required String notes,
  });
}
