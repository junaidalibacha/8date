import 'package:eight_date_app/app/index.dart';

class ProfileViewModel extends ChangeNotifier {
  int maxLength = 100;
  String bioText = '';
  String? instaName;
  final bioTextController = TextEditingController();
  final instaNameTextController = TextEditingController();
  void onAddInstaName(String value) {
    bioText = value;
    counter();
    notifyListeners();
  }

  void onAddBio(String value) {
    instaName = value;
    notifyListeners();
  }

  int counter() {
    return maxLength - bioText.length;
  }
}
