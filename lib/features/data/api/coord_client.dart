import 'package:coord_converter/core/constants/constants.dart';
import 'package:coord_converter/features/domain/entity/api_result_entity.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:dio/dio.dart' hide Headers;

part 'coord_client.g.dart';

@RestApi(baseUrl: Constants.BASE_API_URL)
abstract class CoordClient {
  factory CoordClient(Dio dio, {String baseUrl}) = _CoordClient;

  @POST('/coordinates/save')
  Future<HttpResponse<APIResultEntity>> saveCoordinates(
    @Body() payload,
  );
}
