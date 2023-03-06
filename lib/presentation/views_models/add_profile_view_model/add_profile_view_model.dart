import 'dart:convert';

import 'package:eight_date_app/app/index.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddProfileViewModel extends ChangeNotifier {
  String? _image;
  String? get image => _image;

  ///

  ///

  Future<void> setImageFrom() async {
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
}
 // final List<File> _imagesList = [];
  // List<File> get imagesList => [..._imagesList];

  // Future<void> pickImage() async {
  //   final picker = ImagePicker();
  //   final pickedFile = await picker.pickImage(source: ImageSource.gallery);

  //   if (pickedFile != null) {
  //     _imagesList.add(File(pickedFile.path));
  //   }
  //   ChangeNotifier();
  // }
