import 'package:eight_date_app/presentation/views/sign_up/components/birthday_view.dart';
import 'package:eight_date_app/presentation/views/sign_up/components/email_view.dart';
import 'package:eight_date_app/presentation/views/sign_up/components/name_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SignUpViewModel extends ChangeNotifier {
  SignUpViewModel();
  var tabIndex = 0;
  var firstName = '';
  var lastName = '';
  var email = '';
  DateTime birthDay = DateTime.now();

  List<Widget> get bodyList => const [
        NameView(),
        EmailView(),
        BirthDayView(),
      ];

  void next() {
    if (tabIndex < 2) {
      tabIndex += 1;
    }
    notifyListeners();
  }

  void onFirstNameChange(String value) {
    firstName = value;
    notifyListeners();
  }

  void onLastNameChange(String value) {
    lastName = value;
    notifyListeners();
  }

  void onEmailChange(String value) {
    email = value;
    notifyListeners();
  }

  void selectDate(DateTime newDate) {
    birthDay = newDate;
    notifyListeners();
  }

  String get age => (DateTime.now().year - birthDay.year).toString();

  String get getMonth => DateFormat('MMMMd')
      .format(DateTime(0, birthDay.month, birthDay.day))
      .toString();
}
