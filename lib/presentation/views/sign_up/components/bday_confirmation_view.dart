import 'package:eight_date_app/app/index.dart';

import '../../../views_models/sign_up_view_model/sign_up_view_model.dart';

class BdayConfirmationView extends StatelessWidget {
  const BdayConfirmationView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<SignUpViewModel>(context);

    return Dialog(
      backgroundColor: ColorManager.yellow,
      insetPadding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(15),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(22),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            buildVerticleSpace(60),
            Text(
              'Please confirm\nyour info',
              style: TextStyleManager.regularTextStyle(
                fontSize: getProportionateScreenHeight(48),
                color: ColorManager.primary,
              ),
              textAlign: TextAlign.center,
            ),
            buildVerticleSpace(60),
            Text(
              'age ${viewModel.age}',
              style: TextStyleManager.regularTextStyle(
                fontSize: getProportionateScreenHeight(36),
                color: ColorManager.primary,
              ),
              textAlign: TextAlign.center,
            ),
            buildVerticleSpace(20),
            Text(
              'birthdAy: ${viewModel.getMonth}',
              style: TextStyleManager.regularTextStyle(
                fontSize: getProportionateScreenHeight(20),
                color: ColorManager.primary,
              ),
              textAlign: TextAlign.center,
            ),
            buildVerticleSpace(60),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorManager.accent,
              ),
              onPressed: () {
                Get.offAndToNamed(Routes.enableNotificationRoute);
              },
              child: Text(
                'confirm',
                style: TextStyleManager.regularTextStyle(
                  fontSize: getProportionateScreenHeight(14),
                ),
              ),
            ),
            buildVerticleSpace(20),
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text(
                'Edit',
                style: TextStyleManager.regularTextStyle(
                  color: ColorManager.darkGrey,
                  fontSize: getProportionateScreenHeight(14),
                ),
              ),
            ),
            buildVerticleSpace(35),
          ],
        ),
      ),
    );
  }
}
