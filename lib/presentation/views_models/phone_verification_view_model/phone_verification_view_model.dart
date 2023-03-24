import 'package:fluttertoast/fluttertoast.dart';

import '../../../app/index.dart';

class PhoneVerificationViewModel extends ChangeNotifier {
  final otpController = TextEditingController();
  String? code;
  void complete(String value) {
    code = value;
    notifyListeners();
  }

  verifyOTP(var otp) {
    if (otp.toString() == otpController.text) {
      Fluttertoast.showToast(
          msg: "OTP Verified SuccessFully!", backgroundColor: Colors.green);
      Get.toNamed(Routes.signUpRoute);
    } else {
      Fluttertoast.showToast(
          msg: "OTP didn't match!", backgroundColor: Colors.red);
    }
  }
}
