import 'dart:ui';

import 'package:coord_converter/features/presentation/settings/settings_bloc.dart';
import 'package:equatable/equatable.dart';

class SettingsState extends Equatable {
  final SettingsUIEvent event;

  const SettingsState({this.event = SettingsUIEvent.initial});

  @override
  List<Object?> get props => [
        event,
      ];
}
