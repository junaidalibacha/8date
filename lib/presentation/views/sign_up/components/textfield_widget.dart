import 'package:flutter/material.dart';

import '../../../src/index.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    this.controller,
    this.keyboardType,
    required this.hintText,
    this.validator,
    this.onSave,
    this.onChange,
  }) : super(key: key);
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String hintText;
  final String? Function(String? value)? validator;
  final void Function(String? newValue)? onSave;
  final void Function(String newValue)? onChange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      keyboardAppearance: Brightness.dark,
      controller: controller,
      style: TextStyleManager.regularTextStyle(
        fontSize: getProportionateScreenHeight(40),
      ),
      decoration: InputDecoration(
        enabledBorder: UnderLineInptBorderStyle.getEnabledBorder(),
        focusedBorder: UnderLineInptBorderStyle.getFocusBorder(),

        hintText: hintText,
        hintStyle: TextStyleManager.regularTextStyle(
          color: ColorManager.grey1,
          fontSize: getProportionateScreenHeight(24),
        ),
        // enabledBorder:
      ),
      onChanged: onChange,
      validator: validator,
      onSaved: onSave,
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}
