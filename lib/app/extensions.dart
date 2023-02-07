// Extension on String
import 'package:eight_date_app/app/index.dart';

extension NonNullString on String? {
  String orEmpty() {
    if (this == null) {
      return kEmpty;
    } else {
      return this!;
    }
  }
}

// Extension on int
extension NonNullInt on int? {
  int orZero() {
    if (this == null) {
      return kZero;
    } else {
      return this!;
    }
  }
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}
