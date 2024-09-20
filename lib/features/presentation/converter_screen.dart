import 'package:coord_converter/features/presentation/converter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConverterScreen extends StatelessWidget {
  const ConverterScreen({super.key});

  static String routeName = "/converterScreen";

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ConverterCubit>();
    final longController = bloc.longTextController;
    final latController = bloc.latTextController;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        body: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const TextWidget(text: "LONGITUDE"),
              TextFieldWidget(
                controller: longController,
              ),
              SizedBox(height: 10.h),
              const TextWidget(text: "LATITUDE"),
              TextFieldWidget(
                controller: latController,
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Button(
                    text: "CONVERT",
                    onPress: () {},
                  ),
                  SizedBox(width: 10.w),
                  Button(
                    text: "SAVE",
                    onPress: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  final TextEditingController controller;

  const TextFieldWidget({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.w,
      child: TextField(
        controller: controller,
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
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

  const TextWidget({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 11.h,
      ),
    );
  }
}
