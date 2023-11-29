import 'package:clean_architecture_getx_starter/src/config/constants/borderRadius.dart';
import 'package:clean_architecture_getx_starter/src/config/constants/colors/colors.config.dart';
import 'package:clean_architecture_getx_starter/src/config/constants/font_weights.config.dart';
import 'package:clean_architecture_getx_starter/src/config/constants/sizes.config.dart';
import 'package:clean_architecture_getx_starter/src/presentation/widgets/input/validator/validator.input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class AppTextFormField extends StatefulWidget {
  TextInputType? keyboardType;
  String? labelText;
  bool? obsureText;
  AppTextFormField(
      {required this.keyboardType,
      required this.labelText,
      this.obsureText = false});
  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  String? errorText;
  @override
  Widget build(BuildContext context) {
    toogleObsureText() {
      setState(() {
        widget.obsureText = !widget.obsureText!;
      });
    }

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        widget.labelText!,
        style: TextStyle(
          fontWeight: AppFontWeight.semibold,
        ),
      ),
      SizedBox(
        height: AppSizes.extraSmall,
      ),
      Container(
          decoration: BoxDecoration(
              color: AppColors.textBox, borderRadius: appBorderRadius),
          child: TextFormField(
            keyboardType: widget.keyboardType,
            onChanged: (value) => {
              setState(() {
                errorText =
                    validateInput(value: value, type: widget.keyboardType!);
              })
            },
            decoration: InputDecoration(
                fillColor: Colors.transparent,
                suffixIcon: widget.labelText!.toLowerCase() == "password"
                    ? widget.obsureText!
                        ? GestureDetector(
                            onTap: toogleObsureText, child: Icon(Ionicons.eye))
                        : GestureDetector(
                            onTap: toogleObsureText,
                            child: Icon(Ionicons.eye_off))
                    : null),
            obscureText: widget.obsureText!,
          )),
      errorText != null
          ? Column(
              children: [
                SizedBox(
                  height: AppSizes.extraSmall,
                ),
                Text(
                  errorText!,
                  style: TextStyle(color: AppColors.textErrorColor),
                )
              ],
            )
          : Container(),
      SizedBox(
        height: AppSizes.extraSmall,
      ),
    ]);
  }
}
