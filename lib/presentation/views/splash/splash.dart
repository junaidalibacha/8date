import 'package:eight_date_app/app/constants.dart';
import 'package:eight_date_app/presentation/routes/routes.dart';
import 'package:eight_date_app/presentation/src/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            kText100('zuma'),
            buildVerticleSpace(224),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.registerRoute);
              },
              child: kText32('APPLY'),
            ),
            buildVerticleSpace(16),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                kText24('ALREADY A MEMBER?'),
                TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.phoneVerificationRoute);
                  },
                  child: const Text('LOG IN'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
