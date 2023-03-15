import 'package:eight_date_app/app/index.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsViewModel extends ChangeNotifier {
  bool enableNoti = false;
  bool reminderNoti = false;
  bool messageNoti = false;

  final List<String> cities = [
    'los angeles',
    'new york',
    'miami',
    'chicago',
    'london',
  ];
  Object? city;
  ValueChanged<Object?> selectCiy() {
    return (value) {
      city = value;
      notifyListeners();
    };
  }

  final List<String> genders = [
    'man',
    'women',
    'everyone',
  ];
  Object? datingGender;
  ValueChanged<Object?> selectDatingGender() {
    return (value) {
      datingGender = value;
      notifyListeners();
    };
  }

  //chat bubble setting...
  Object? color;
  ValueChanged<Object?> selectColor() {
    return (value) {
      color = value;
      notifyListeners();
    };
  }

  final List<Color> colors = [
    const Color(0XFF2B3DD9),
    const Color(0XFF2793B6),
    const Color(0XFF14A41A),
    const Color(0XFFFF910F),
  ];
  void launchEmail() async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'team@luma.com',
      query: 'subject=Greetings&body=Hello World',
    );
    String url = params.toString();
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  void enableNotiTogle(bool value) {
    enableNoti = value;
    notifyListeners();
  }

  void reminderTogle(bool value) {
    reminderNoti = value;
    notifyListeners();
  }

  void msgTogle(bool value) {
    messageNoti = value;
    notifyListeners();
  }
  //notification settings
}
