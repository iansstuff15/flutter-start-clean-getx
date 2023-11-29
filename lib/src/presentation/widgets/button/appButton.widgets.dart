import 'package:clean_architecture_getx_starter/src/config/constants/colors/colors.config.dart';
import 'package:clean_architecture_getx_starter/src/config/constants/font_weights.config.dart';
import 'package:clean_architecture_getx_starter/src/config/constants/sizes.config.dart';
import 'package:clean_architecture_getx_starter/src/data/enum/button/button.dart';
import 'package:flutter/material.dart';

class AppButton extends StatefulWidget {
  VoidCallback? onPress;
  bool? block;
  String? buttonText;
  ButtonTypes? buttonType;
  IconData? icon;
  double? width;
  MaterialStatePropertyAll<Color>? backgroundColor;
  Color? foregroundColor;
  Color? iconColor;
  AppButton(
      {this.buttonText,
      required this.onPress,
      required this.buttonType,
      this.block = false,
      this.icon,
      this.width = 0,
      this.foregroundColor,
      this.backgroundColor = const MaterialStatePropertyAll(Colors.white),
      this.iconColor = Colors.white});
  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: widget.block! ? double.infinity : null,
        height: 50,
        margin: EdgeInsets.symmetric(vertical: 4),
        child: widget.buttonType == ButtonTypes.ELEVATED
            ? ElevatedButton(
                onPressed: widget.onPress,
                style: ButtonStyle(backgroundColor: widget.backgroundColor),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  widget.icon != null
                      ? Icon(
                          widget.icon,
                          color: widget.iconColor,
                          size: AppSizes.mediumSmall,
                        )
                      : Container(),
                  widget.icon != null
                      ? SizedBox(
                          width: AppSizes.extraSmall,
                        )
                      : Container(),
                  Text(
                    widget.buttonText!,
                    style: TextStyle(
                        color: widget.foregroundColor != null
                            ? widget.foregroundColor
                            : AppColors.textColor),
                  )
                ]),
              )
            : widget.buttonType == ButtonTypes.PRIMARY
                ? ElevatedButton(
                    onPressed: widget.onPress,
                    style: ButtonStyle(
                      backgroundColor: AppColors.primaryButtonColor,
                    ),
                    child: Text(
                      widget.buttonText!,
                      style: TextStyle(
                          color: AppColors.primaryButtonTextColor,
                          fontWeight: AppFontWeight.bold),
                    ),
                  )
                : widget.buttonType == ButtonTypes.OUTLINE
                    ? OutlinedButton(
                        onPressed: widget.onPress,
                        child: Text(widget.buttonText!))
                    : widget.buttonType == ButtonTypes.TEXT
                        ? TextButton(
                            onPressed: widget.onPress,
                            child: Text(
                              widget.buttonText!,
                              style: TextStyle(color: AppColors.textColor),
                            ))
                        : widget.buttonType == ButtonTypes.ICON
                            ? IconButton(
                                onPressed: widget.onPress,
                                icon: Icon(widget.icon))
                            : Text("Error: undefined button type"));
  }
}
