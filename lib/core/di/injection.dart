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

  //REPOSITORY

  //USE CASE

  //BLOC
  vf.registerLazySingleton<ConverterCubit>(
    () => ConverterCubit(),
  );
}
