import 'package:coord_converter/features/domain/repository/app_repository.dart';
import 'package:coord_converter/features/presentation/converter_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConverterCubit extends Cubit<ConverterState> {
  final AppRepository repository;

  ConverterCubit({
    required this.repository,
  }) : super(const ConverterState());

  TextEditingController longTextController = TextEditingController();
  TextEditingController latTextController = TextEditingController();

  Future<void> convertToDMS() async {
    final longitude = longTextController.text;
    final latitude = latTextController.text;
    if (longitude.isEmpty) {

    }
    else if (latitude.isEmpty) {

    }
    else {
      final data = await repository.convertCoordinates(longitude, latitude);
      if (data.isSuccess) {
        
      }
    }
  }
}
