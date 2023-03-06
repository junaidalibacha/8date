import 'package:eight_date_app/app/index.dart';

import '../../common/default_button.dart';

class UserProfileView extends StatelessWidget {
  const UserProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(6)),
            child: Column(
              children: [
                buildVerticleSpace(getProportionateScreenHeight(20)),
                DefaultButton(
                  backgroundColor: ColorManager.yellow,
                  foregroundColor: ColorManager.yellow,
                  text: 'Edit',
                  textColor: ColorManager.primary,
                  press: () {
                    Get.toNamed(Routes.editProfileView);
                  },
                  height: getProportionateScreenHeight(40),
                  width: getProportionateScreenWidth(120),
                ),
                buildVerticleSpace(getProportionateScreenHeight(10)),
                Container(
                  height: SizeConfig.screenHeight -
                      kBottomNavigationBarHeight -
                      getProportionateScreenHeight(100),
                  width: SizeConfig.screenWidth,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage(
                          AssetsImages.home1,
                        ),
                        fit: BoxFit.fill),
                    borderRadius:
                        BorderRadius.circular(getProportionateScreenHeight(20)),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                          bottom: getProportionateScreenHeight(16),
                          left: getProportionateScreenWidth(29),
                          child: Row(
                            children: [
                              kText60('Katie'),
                              buildHorizontalSpace(
                                  getProportionateScreenWidth(8)),
                              const CircleAvatar(
                                radius: 5,
                                backgroundColor: Colors.green,
                              )
                            ],
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(40),
                      vertical: getProportionateScreenWidth(45)),
                  child: kText24(
                      'hi i’m katie! I grew up in miami, went to usc, and work in entertainment. i love to dance and go to music festivals 💃'),
                ),
                Container(
                  height: SizeConfig.screenHeight -
                      kToolbarHeight -
                      kBottomNavigationBarHeight -
                      30,
                  width: SizeConfig.screenWidth,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(getProportionateScreenHeight(20)),
                  ),
                  child: Image.asset(
                    AssetsImages.home2,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  height: SizeConfig.screenHeight -
                      kToolbarHeight -
                      kBottomNavigationBarHeight -
                      30,
                  width: SizeConfig.screenWidth,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(getProportionateScreenHeight(20)),
                  ),
                  child: Image.asset(
                    AssetsImages.home3,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: getProportionateScreenHeight(45)),
                  child: kText20('Intrests'),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(100),
                  child: ListView.builder(
                    itemCount: 60,
                    itemExtent: getProportionateScreenWidth(140),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, index) {
                      return Column(
                        children: [
                          Image.asset(
                            AssetsIcons.intrestIcon1,
                            height: getProportionateScreenHeight(50),
                            width: 50,
                          ),
                          kText16('Intrest'),
                        ],
                      );
                    },
                  ),
                ),
                Container(
                  height: SizeConfig.screenHeight -
                      kToolbarHeight -
                      kBottomNavigationBarHeight -
                      30,
                  width: SizeConfig.screenWidth,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(getProportionateScreenHeight(20)),
                  ),
                  child: Image.asset(
                    AssetsImages.home4,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  height: SizeConfig.screenHeight -
                      kToolbarHeight -
                      kBottomNavigationBarHeight -
                      30,
                  width: SizeConfig.screenWidth,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(getProportionateScreenHeight(20)),
                  ),
                  child: Image.asset(
                    AssetsImages.home5,
                    fit: BoxFit.fill,
                  ),
                ),
                buildVerticleSpace(getProportionateScreenHeight(7)),
                DefaultButton(
                  height: getProportionateScreenHeight(55),
                  width: getProportionateScreenWidth(388),
                  backgroundColor: ColorManager.grey,
                  foregroundColor: ColorManager.grey1,
                  text: 'Settings',
                  textColor: Colors.black,
                  press: () {
                    Get.toNamed(Routes.settingsView);
                  },
                ),
                buildVerticleSpace(getProportionateScreenHeight(10))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
