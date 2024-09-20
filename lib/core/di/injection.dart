import 'package:coord_converter/features/data/datasource/app_datasource.dart';
import 'package:coord_converter/features/data/repository/app_repository_impl.dart';
import 'package:coord_converter/features/domain/repository/app_repository.dart';
import 'package:coord_converter/features/presentation/converter_bloc.dart';
import 'package:coord_converter/features/presentation/converter_state.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt vf = GetIt.instance;

Future<void> init() async {
  //Dio dio = Dio();
  //dio.interceptors.add(ApiInterceptor());

  //LIBRARY

  //API

  //DATASOURCE
  vf.registerLazySingleton<AppDataSource>(() => AppDataSourceImpl());

  //REPOSITORY
  vf.registerLazySingleton<AppRepository>(
    () => AppRepositoryImpl(
      dataSource: vf.call(),
    ),
  );

  //USE CASE

  //BLOC
  vf.registerLazySingleton<ConverterCubit>(
    () => ConverterCubit(
      repository: vf.call(),
    ),
  );
}
