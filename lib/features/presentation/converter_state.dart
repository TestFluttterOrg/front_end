import 'package:coord_converter/features/presentation/converter_bloc.dart';
import 'package:equatable/equatable.dart';

class ConverterState extends Equatable {
  final UIEvents uiEvents;
  final String uiErrorMessage;
  final String message;
  final bool showResult;
  final String latResult;
  final String longResult;

  const ConverterState({
    this.uiEvents = UIEvents.initial,
    this.uiErrorMessage = "",
    this.message = "",
    this.showResult = false,
    this.latResult = "",
    this.longResult = "",
  });

  ConverterState copyWith({
    UIEvents? uiEvents,
    String? uiErrorMessage,
    String? message,
    bool? showResult,
    String? latResult,
    String? longResult,
  }) =>
      ConverterState(
        uiEvents: uiEvents ?? this.uiEvents,
        uiErrorMessage: uiErrorMessage ?? this.uiErrorMessage,
        message: message ?? this.message,
        latResult: latResult ?? this.latResult,
        longResult: longResult ?? this.longResult,
        showResult: showResult ?? this.showResult,
      );

  @override
  List<Object?> get props => [
        uiEvents,
        uiErrorMessage,
        message,
        latResult,
        longResult,
        showResult,
      ];
}
