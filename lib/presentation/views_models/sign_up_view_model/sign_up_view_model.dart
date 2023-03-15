import 'package:eight_date_app/presentation/views/sign_up/components/email_view.dart';
import 'package:eight_date_app/presentation/views/sign_up/components/name_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../views/sign_up/components/select_birthday_view.dart';

class SignUpViewModel extends ChangeNotifier {
  SignUpViewModel();
  var tabIndex = 0;
  var firstName = '';
  var lastName = '';
  var email = '';
  bool radioValue = false;

  DateTime birthDay = DateTime.now();
  bool? notificationAccess;

  final List<String> cities = [
    'los angeles',
    'new york',
    'miami',
    'chicago',
    'london',
  ];
  final List<String> genders = [
    'man',
    'woman',
    'other',
  ];
  final List<String> dateGenders = [
    'men',
    'women',
    'other',
  ];

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
  ];
  void selectInterest(String interest) {
    if (selectedInterest.contains(interest)) {
      selectedInterest.remove(interest);
    } else {
      selectedInterest.add(interest);
    }
    notifyListeners();
  }

  // List<String> get cities => ;

  Object? city;
  ValueChanged<Object?> selectCiy() {
    return (value) {
      city = value;
      notifyListeners();
    };
  }

  Object? gender;
  ValueChanged<Object?> selectGender() {
    return (value) {
      gender = value;
      notifyListeners();
    };
  }

  Object? datingGender;
  ValueChanged<Object?> selectDatingGender() {
    return (value) {
      datingGender = value;
      notifyListeners();
    };
  }

  List<Widget> get bodyList => const [
        NameView(),
        EmailView(),
        SelectBirthDayView(),
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

  void getNotiAccess(bool value) {
    notificationAccess = value;
    notifyListeners();
  }

  void handleRadioValueChange() {
    radioValue = !radioValue;
    notifyListeners();
  }
}

enum Notification { enable, disable }
