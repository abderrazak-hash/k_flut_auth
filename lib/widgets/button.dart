import 'package:flut_auth/constants.dart';
import 'package:flutter/material.dart';

class Button extends TextButton {
  final double height, width;
  Button({
    Key? key,
    required super.onPressed,
    this.height = 45.0,
    this.width = double.infinity,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
    super.focusNode,
    super.autofocus = false,
    super.clipBehavior = Clip.antiAlias,
    String? label,
    String icon = '',
    Widget? son,
  }) : super(
          key: key,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(0.0),
          ),
          child: Container(
            height: height,
            width: width,
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              color: altClr,
            ),
            child: Center(
              child: son ??
                  Text(
                    label!,
                    style: const TextStyle(
                      color: white,
                      fontSize: 15.0,
                    ),
                  ),
            ),
          ),
        );
}
