import 'package:eight_date_app/app/index.dart';
import 'package:eight_date_app/presentation/views/home_page/no_match.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // toolbarHeight: kToolbarHeight - getProportionateScreenHeight(20),
        automaticallyImplyLeading: false,
        title: kText28('Zuma'),
        centerTitle: true,
        bottom: PreferredSize(
            preferredSize:
                Size(SizeConfig.screenWidth, getProportionateScreenHeight(0)),
            child: Padding(
              padding:
                  EdgeInsets.only(bottom: getProportionateScreenHeight(10)),
              child: kText12('03:24:07'),
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(6)),
          child: Column(
            children: [
              Container(
                height: SizeConfig.screenHeight -
                    kToolbarHeight -
                    kBottomNavigationBarHeight -
                    30,
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
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorManager.red,
                    minimumSize: Size(getProportionateScreenHeight(388),
                        getProportionateScreenHeight(55))),
                onPressed: () {
                  Get.to(const NoMatch());
                },
                child: kText20('Delete Match'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
