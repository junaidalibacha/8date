import 'dart:math';

import 'package:eight_date_app/presentation/views/phone_verification/phone_verification.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:twilio_flutter/twilio_flutter.dart';

class RegisterViewModel extends ChangeNotifier {
  RegisterViewModel();
  final countryPickeer = const FlCountryCodePicker();
  CountryCode? countryCode;
  var phoneNumber = '';
  bool isCodeSent = false;

  late TwilioFlutter twilioFlutter;
  final phonoNoController = TextEditingController();

  var sentOTP;

  void onSelect(BuildContext context) async {
    final code = await countryPickeer.showPicker(context: context);
    countryCode = code;
    notifyListeners();
  }

  void onChange(String value) {
    phoneNumber = value;
    notifyListeners();
  }

  sendSMS() {
    twilioFlutter = TwilioFlutter(
        accountSid:
            'AC61fc6efcda766bde1c7031ccbbd0a63b', // replace it with your account SID
        authToken:
            '3281299ad5e0bd43b03c1adda7c88de4', // replace it with your auth token
        twilioNumber:
            '+19593356215' // replace it with your purchased twilioNumber

        );

    var rnd = Random();

    var digits = rnd.nextInt(900000) + 100000;

    sentOTP = digits;

    // lets print otp as well

    print(sentOTP);

    twilioFlutter.sendSMS(
        toNumber: phonoNoController.text,
        messageBody: 'Hello This is 6 digit otp code to verify phone $digits');
    Get.to(PhoneVarificationView(
      otp: sentOTP,
    ));
  }

  // String? validate(var value) {
  //   if (value == null || value.isEmpty || value.length < 10) {
  //     return 'Please enter a valid number';
  //   }
  //   notifyListeners();
  //   return null;
  // }
}

// class RegisterBinding implements Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut<RegisterViewModel>(() => RegisterViewModel());
//   }
// }
