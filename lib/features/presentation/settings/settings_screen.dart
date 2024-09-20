import 'package:coord_converter/features/presentation/converter/converter_bloc.dart';
import 'package:coord_converter/features/presentation/settings/settings_bloc.dart';
import 'package:coord_converter/features/presentation/settings/settings_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  static String routeName = "/settingsScreen";

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final bloc = context.read<SettingsCubit>();
    bloc.init();
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.transparent,
        width: width,
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const UIEventWidget(),
            const TextWidget(text: "HOST IP"),
            SizedBox(height: 5.h),
            TextFieldWidget(
              controller: bloc.controller,
              onTextChanged: (val) {},
            ),
            SizedBox(height: 5.h),
            Button(
              text: "SAVE",
              onPress: () {
                bloc.save();
              },
            ),
          ],
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
        decoration: const InputDecoration(
          hintText: "192.xx.xx.xx",
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
      style: style ??
          TextStyle(
            fontSize: 11.h,
          ),
    );
  }
}

class UIEventWidget extends StatelessWidget {
  const UIEventWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SettingsCubit, SettingsState>(
      child: const SizedBox(),
      listener: (context, state) {
        final event = state.event;
        switch(event) {
          case SettingsUIEvent.showToast:
            Fluttertoast.showToast(msg: "Saved!");
            break;
          default:
            break;
        }
      },
    );
  }
}

