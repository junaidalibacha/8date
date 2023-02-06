import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/cupertino.dart';

class RegisterViewModel extends ChangeNotifier {
  RegisterViewModel();
  final countryPickeer = const FlCountryCodePicker();
  CountryCode? countryCode;
  var phoneNumber = '';

  void ontap(BuildContext context) async {
    final code = await countryPickeer.showPicker(context: context);
    countryCode = code;
    notifyListeners();
  }

  void onChange(String value) {
    phoneNumber = value;
    notifyListeners();
  }
}

// class RegisterBinding implements Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut<RegisterViewModel>(() => RegisterViewModel());
//   }
// }
