import 'package:coord_converter/core/constants/constants.dart';
import 'package:coord_converter/features/presentation/settings/settings_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum SettingsUIEvent {
  initial,
  showToast,
}

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(const SettingsState());

  TextEditingController controller = TextEditingController();

  void init() {
    controller.text = Constants.HOST_IP;
  }

  void save() {
    Constants.HOST_IP = controller.text;
    emit(const SettingsState(event: SettingsUIEvent.showToast));
    emit(const SettingsState(event: SettingsUIEvent.initial));
  }
}