import 'package:coord_converter/core/constants/constants.dart';
import 'package:coord_converter/features/domain/repository/app_repository.dart';
import 'package:coord_converter/features/presentation/converter/converter_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum UIEvents {
  initial,
  showToastMessage,
  showLoading,
  hideLoading,
}

class ConverterCubit extends Cubit<ConverterState> {
  final AppRepository repository;

  ConverterCubit({
    required this.repository,
  }) : super(const ConverterState());

  TextEditingController longTextController = TextEditingController();
  TextEditingController latTextController = TextEditingController();
  TextEditingController notesController = TextEditingController();

  Future<void> convertToDMS() async {
    final longitude = longTextController.text;
    final latitude = latTextController.text;
    if (longitude.isEmpty) {
      emit(state.copyWith(uiErrorMessage: "Longitude field is empty"));
    } else if (latitude.isEmpty) {
      emit(state.copyWith(uiErrorMessage: "Latitude field is empty"));
    } else {
      emit(state.copyWith(uiErrorMessage: ""));
      final data = await repository.convertCoordinates(
        longitude: longitude,
        latitude: latitude,
      );
      if (data.isSuccess) {
        emit(
          state.copyWith(
            showResult: true,
            latResult: data.data!.latitudeDMS,
            longResult: data.data!.longitudeDMS,
          ),
        );
      } else {
        emit(state.copyWith(showResult: false, uiErrorMessage: data.message));
      }
    }
  }

  Future<void> saveCoordinates() async {
    final longitude = longTextController.text;
    final latitude = latTextController.text;
    final notes = notesController.text;

    if (Constants.HOST_IP.trim() == "" || Constants.HOST_IP.trim() == " ") {
      emit(state.copyWith(uiErrorMessage: "Please setup the HOST IP"));
      return;
    }

    emit(state.copyWith(uiEvents: UIEvents.hideLoading, uiErrorMessage: ""));
    emit(state.copyWith(uiEvents: UIEvents.showLoading));
    final result = await repository.saveCoordinates(
      longitude: longitude,
      latitude: latitude,
      notes: notes,
    );
    emit(state.copyWith(uiEvents: UIEvents.hideLoading));
    emit(
      state.copyWith(
        message: result.message,
        uiEvents: UIEvents.showToastMessage,
      ),
    );
    emit(state.copyWith(uiEvents: UIEvents.initial));
  }

  void hideAndClearUIIndicators() {
    notesController.text = "";
    emit(state.copyWith(showResult: false, uiErrorMessage: ""));
  }
}
