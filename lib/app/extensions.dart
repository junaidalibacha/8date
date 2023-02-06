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
