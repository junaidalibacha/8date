import 'package:eight_date_app/app/index.dart';

class MembershipViewModel extends ChangeNotifier {
  int pageIndex = 0;

  void nextPage() {
    pageIndex = pageIndex + 1;
    notifyListeners();
  }

  void previousPage() {
    pageIndex = pageIndex - 1;
    notifyListeners();
  }

  final List<String> text1List = [
    'every Day at ',
    'Your match expires at ',
    '',
    'say goodbye at anytime if tHE VIBES AREN’T right!',
  ];
  final List<String> textSpanList = [
    'noon ',
    'Midnight',
    'Make a move',
    '',
  ];
  final List<String> text2List = [
    'you get a new match',
    '',
    ' (or don’T) it’s up to you to!',
    '',
  ];
  final List<Widget> _textSpanList = List.generate(
    3,
    (index) => RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'every Day at',
            style: TextStyleManager.regularTextStyle(
              fontSize: getProportionateScreenHeight(32),
            ),
          ),
          TextSpan(
            text: ' noon',
            style: TextStyleManager.regularTextStyle(
              fontSize: getProportionateScreenHeight(32),
              color: ColorManager.yellow,
            ),
          ),
          TextSpan(
            text: '  you get a new match',
            style: TextStyleManager.regularTextStyle(
              fontSize: getProportionateScreenHeight(32),
            ),
          ),
        ],
      ),
    ),
  );
}
