import 'package:flutter/cupertino.dart';

class PhoneVerificationViewModel extends ChangeNotifier {
  String? code;
  void complete(String value) {
    code = value;
    notifyListeners();
  }
}
