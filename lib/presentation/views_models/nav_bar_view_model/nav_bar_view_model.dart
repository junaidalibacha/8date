import 'package:eight_date_app/app/index.dart';
import 'package:eight_date_app/presentation/views/home_page/home_page.dart';

import '../../views/User_Profile/user_profile_view.dart';
import '../../views/chat_view/chat_view.dart';

class NavBarViewModel extends ChangeNotifier {
  int index = 1;
  List<Widget> bodyList = [
    const UserProfileView(),
    const HomePage(),
    const ChatView(),

    // Transaction(),
    // const ChatView(),
  ];
  void changeIndex(int value) {
    index = value;
    notifyListeners();
  }
}
