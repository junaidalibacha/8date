import 'package:eight_date_app/app/index.dart';
import 'package:eight_date_app/presentation/common/index.dart';
import 'package:flutter/material.dart';

class PhoneVarification extends StatelessWidget {
  const PhoneVarification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            kText32('ENTER VERIFICATION CODE'),
          ],
        ),
      ),
      floatingActionButton: const CircleButtonWidget(
        onTap: null,
      ),
    );
  }
}
