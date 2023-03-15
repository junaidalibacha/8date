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
            icon: Image.asset(
              'assets/icons/person_icon.png',
              height: getProportionateScreenHeight(21),
              width: getProportionateScreenWidth(21),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Image.asset(
              'assets/icons/heart_icon.png',
              height: getProportionateScreenHeight(21),
              width: getProportionateScreenWidth(21),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Image.asset(
              'assets/icons/message_icon.png',
              height: getProportionateScreenHeight(21),
              width: getProportionateScreenWidth(21),
            ),
          ),
        ],
      ),
    );
  }
}
