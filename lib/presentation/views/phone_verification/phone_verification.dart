import 'package:eight_date_app/app/index.dart';
import 'package:eight_date_app/presentation/common/index.dart';
import 'package:eight_date_app/presentation/views_models/phone_verification_view_model/phone_verification_view_model.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';

class PhoneVarificationView extends StatelessWidget {
  var otp;
  PhoneVarificationView({
    this.otp,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<PhoneVerificationViewModel>(context);
    TextEditingController newTextEditingController = TextEditingController();
    FocusNode focusNode = FocusNode();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            kText32('ENTER VERIFICATION CODE'),
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
                controller: viewModel.otpController,
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
                viewModel.verifyOTP(otp);
              },
      ),
    );
  }
}
