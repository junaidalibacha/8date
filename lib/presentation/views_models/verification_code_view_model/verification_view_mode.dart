import '../../../app/index.dart';

class VerificationCodeViewModel extends ChangeNotifier {
  String? code;

  void complete(String value) {
    code = value;
    notifyListeners();
  }
}
