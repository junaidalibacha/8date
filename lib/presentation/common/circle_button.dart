import 'package:flutter/material.dart';

import '../src/index.dart';

class CircleButtonWidget extends StatelessWidget {
  const CircleButtonWidget({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
        height: getProportionateScreenHeight(59),
        minWidth: getProportionateScreenHeight(59),
        onPressed: onTap,
        color: ColorManager.accent,
        disabledColor: ColorManager.secondary,
        shape: const CircleBorder(
          side: BorderSide(
            color: Colors.white,
          ),
        ),
        child: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
      ),
    );
  }
}
