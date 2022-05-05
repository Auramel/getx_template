import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import '../configs/constants.dart';
import '../configs/palette.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    required this.controller,
    required this.placeholder,
    this.keyboardType,
    this.inputFormatters = const <TextInputFormatter>[],
    this.icon,
    this.isPassword = false,
  }): super(key: null);
  
  final TextEditingController controller;
  final String placeholder;
  final TextInputType? keyboardType;
  final List<TextInputFormatter> inputFormatters;
  final Icon? icon;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    final double iconPaddingLeft = (icon != null) 
      ? Constants.inputPadding
      : 0;

    return CupertinoTextField(
      controller: controller,
      padding: const EdgeInsets.all(Constants.inputPadding),
      obscureText: isPassword,
      placeholder: placeholder,
      placeholderStyle: const TextStyle(
        color: Palette.clouds,
        fontSize: 14,
      ),
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      clearButtonMode: OverlayVisibilityMode.editing,
      style: const TextStyle(
        fontSize: 14,
      ),
      prefix: Padding(
        padding: EdgeInsets.only(left: iconPaddingLeft),
        child: icon,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Constants.borderRadius),
        border: Border.all(
          color: Palette.clouds,
        )
      ),
    );
  }
}
