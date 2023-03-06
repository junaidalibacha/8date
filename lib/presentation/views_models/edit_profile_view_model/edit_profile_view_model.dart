import 'dart:convert';

import 'package:eight_date_app/app/index.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EditUserProfileViewModel extends ChangeNotifier {
  String? _image;
  String? get image => _image;
  int maxLength = 100;
  String bioText = '';
  String? instaName;
  final bioTextController = TextEditingController();
  final instaNameTextController = TextEditingController();

  ///

  ///
  ///

  Future<void> setImage() async {
    final imagePicker = ImagePicker();
    final pickedFile = await imagePicker.pickImage(
      source: ImageSource.gallery,
    );

    if (pickedFile != null) {
      final bytes = await pickedFile.readAsBytes();
      final base64Image = base64Encode(bytes);

      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('image', base64Image);

      _image = base64Image;
      notifyListeners();
    }
  }

  Future<void> getImageFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    final image = prefs.getString('image');
    if (image != null) {
      _image = image;
      notifyListeners();
    }
  }

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
    return maxLength = maxLength - bioText.length;
  }

  Set<String> selectedInterest = {};
  final List<String> interests = [
    'travel',
    'golf',
    'animal',
    'dance',
    'sports',
    'gaming',
    'dating',
    'food',
    'travel',
    'golf',
    'animal',
    'dance',
    'sports',
    'gaming',
    'dating',
    'food',
  ];
  void selectInterest(String interest) {
    if (selectedInterest.contains(interest)) {
      selectedInterest.remove(interest);
    } else {
      selectedInterest.add(interest);
    }
    notifyListeners();
  }
}
