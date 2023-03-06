import 'package:eight_date_app/presentation/views_models/verification_code_view_model/verification_view_mode.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';

import '../../../app/index.dart';
import '../../common/circle_button.dart';

class VerificationCodeView extends StatelessWidget {
  const VerificationCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<VerificationCodeViewModel>(context);
    TextEditingController newTextEditingController = TextEditingController();
    FocusNode focusNode = FocusNode();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            kText32('ENTER CODE'),
            buildVerticleSpace(50),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(30),
              ),
              child: PinCodeFields(
                padding: EdgeInsets.only(
                  bottom: getProportionateScreenHeight(12),
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(8),
                ),
                length: 6,
                controller: newTextEditingController,
                focusNode: focusNode,
                autoHideKeyboard: false,
                keyboardType: TextInputType.number,
                borderColor: ColorManager.grey,
                activeBorderColor: ColorManager.white,
                textStyle: TextStyleManager.regularTextStyle(
                  fontSize: getProportionateScreenHeight(40),
                ),
                onComplete: (result) => viewModel.complete(result),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: CircleButtonWidget(
        onTap: viewModel.code == null
            ? null
            : () {
                Get.toNamed(Routes.signUpRoute);
              },
      ),
    );
  }
}
