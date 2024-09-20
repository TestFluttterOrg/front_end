import 'package:coord_converter/features/presentation/converter_bloc.dart';
import 'package:coord_converter/features/presentation/converter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConverterScreen extends StatelessWidget {
  const ConverterScreen({super.key});

  static String routeName = "/converterScreen";

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final bloc = context.read<ConverterCubit>();
    final longController = bloc.longTextController;
    final latController = bloc.latTextController;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          width: width,
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const UIEvents(),
              const UIErrorMessage(),
              SizedBox(height: 10.h),
              const TextWidget(text: "LONGITUDE"),
              TextFieldWidget(
                controller: longController,
                onTextChanged: (val) {
                  bloc.hideAndClearUIIndicators();
                },
              ),
              SizedBox(height: 10.h),
              const TextWidget(text: "LATITUDE"),
              TextFieldWidget(
                controller: latController,
                onTextChanged: (val) {
                  bloc.hideAndClearUIIndicators();
                },
              ),
              SizedBox(height: 10.h),
              Button(
                text: "CONVERT COORDS",
                onPress: () {
                  bloc.convertToDMS();
                },
              ),
              SizedBox(height: 20.h),
              const ConvertedResults(),
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onTextChanged;

  const TextFieldWidget({
    required this.controller,
    required this.onTextChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.w,
      child: TextField(
        onChanged: onTextChanged,
        controller: controller,
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*')),
        ],
        decoration: const InputDecoration(
          labelText: "",
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String text;
  final Function() onPress;

  const Button({required this.text, required this.onPress, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 12.5.h,
        ),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String text;
  final TextStyle? style;
  const TextWidget({required this.text, this.style, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ?? TextStyle(
        fontSize: 11.h,
      ),
    );
  }
}

class UIErrorMessage extends StatelessWidget {
  const UIErrorMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConverterCubit, ConverterState>(
      buildWhen: (prev, current) =>
          prev.uiErrorMessage != current.uiErrorMessage,
      builder: (context, state) {
        return Text(
          state.uiErrorMessage,
          style: TextStyle(
            fontSize: 11.h,
            color: Colors.red,
          ),
        );
      },
    );
  }
}

class UIEvents extends StatelessWidget {
  const UIEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ConverterCubit, ConverterState>(
      child: const SizedBox(),
      listenWhen: (prev, current) => prev.uiEvents != current.uiEvents,
      listener: (context, state) {},
    );
  }
}

class ConvertedResults extends StatelessWidget {
  const ConvertedResults({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConverterCubit, ConverterState>(
      buildWhen: (prev, current) =>
          prev.showResult != current.showResult ||
          prev.latResult != current.latResult ||
          prev.longResult != current.longResult,
      builder: (context, state) {
        if (!state.showResult) {
          return const SizedBox();
        }
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextWidget(
              text: "DMS RESULT",
              style: TextStyle(
                fontSize: 14.h,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 5.h),
            ResultItem(label: "LONGITUDE:", data: state.longResult),
            SizedBox(height: 5.h),
            ResultItem(label: "LATITUDE:", data: state.latResult),
            SizedBox(height: 5.h),
            Button(text: "SAVE", onPress: () {}),
          ],
        );
      },
    );
  }
}

class ResultItem extends StatelessWidget {
  final String label;
  final String data;

  const ResultItem({required this.label, required this.data, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextWidget(
          text: label,
          style: TextStyle(
            fontSize: 13.h,
            fontWeight: FontWeight.w400,
          ),
        ),
        TextWidget(
          text: data,
          style: TextStyle(
            fontSize: 13.h,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
