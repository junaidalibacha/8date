import 'package:eight_date_app/app/index.dart';

import '../views_models/nav_bar_view_model/nav_bar_view_model.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<NavBarViewModel>(context);

    return Scaffold(
      body: viewModel.bodyList[viewModel.index],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: ColorManager.primary,
        // unselectedItemColor: kPrimaryLightColor,
        currentIndex: viewModel.index,
        backgroundColor: ColorManager.primary,
        elevation: 0,
        //  fixedColor: Colors.amber,
        onTap: (value) {
          viewModel.changeIndex(value);
        },
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.person,
              color: ColorManager.yellow,
            ),
          ),
          const BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.favorite_rounded,
              color: Colors.red,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.chat_bubble_rounded,
              color: ColorManager.accent,
            ),
          ),
        ],
      ),
    );
  }
}
