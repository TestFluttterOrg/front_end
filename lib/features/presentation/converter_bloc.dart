import 'package:coord_converter/features/domain/repository/app_repository.dart';
import 'package:coord_converter/features/presentation/converter_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum UIEvents {
  initial,
  showToastMessage,
}

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
      emit(state.copyWith(uiErrorMessage: "Longitude field is empty"));
    }
    else if (latitude.isEmpty) {
      emit(state.copyWith(uiErrorMessage: "Latitude field is empty"));
    }
    else {
      emit(state.copyWith(uiErrorMessage: ""));
      final data = await repository.convertCoordinates(longitude, latitude);
      if (data.isSuccess) {
        emit(
          state.copyWith(
            showResult: true,
            latResult: data.data!.latitudeDMS,
            longResult: data.data!.longitudeDMS,
          ),
        );
      }
      else {
        emit(state.copyWith(showResult: false, uiErrorMessage: data.message));
      }
    }
  }

  void hideAndClearUIIndicators() {
    emit(state.copyWith(showResult: false, uiErrorMessage: ""));
  }
}
