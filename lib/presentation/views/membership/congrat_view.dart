import 'package:eight_date_app/presentation/views_models/membership_view_model/membership_view_model.dart';

import '../../../app/index.dart';
import '../../common/circle_button.dart';

class CongratsView extends StatelessWidget {
  const CongratsView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<MembershipViewModel>(context);
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async {
          viewModel.previousPage();
          return false;
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Center(
            child: viewModel.pageIndex == 0
                ? Column(
                    children: [
                      buildVerticleSpace(40),
                      kText36('Zuma'),
                      const Spacer(flex: 2),
                      Text(
                        'Congrats!',
                        style: TextStyleManager.regularTextStyle(
                          fontSize: getProportionateScreenHeight(64),
                          color: ColorManager.yellow,
                        ),
                      ),
                      buildVerticleSpace(40),
                      buildVerticleSpace(21),
                      kText24("your application has been accepted"),
                      const Spacer(flex: 3),
                    ],
                  )
                : viewModel.pageIndex == 1
                    ? RichText(
                        textAlign: TextAlign.center,
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
                              text: '  you\n get a new match',
                              style: TextStyleManager.regularTextStyle(
                                fontSize: getProportionateScreenHeight(32),
                              ),
                            ),
                          ],
                        ),
                      )
                    : viewModel.pageIndex == 2
                        ? RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Your match expires\nat ',
                                  style: TextStyleManager.regularTextStyle(
                                    fontSize: getProportionateScreenHeight(32),
                                  ),
                                ),
                                TextSpan(
                                  text: 'Midnight',
                                  style: TextStyleManager.regularTextStyle(
                                    fontSize: getProportionateScreenHeight(32),
                                    color: ColorManager.yellow,
                                  ),
                                ),
                                // TextSpan(
                                //   text: '  you get a new match',
                                //   style: TextStyleManager.regularTextStyle(
                                //     fontSize: getProportionateScreenHeight(32),
                                //   ),
                                // ),
                              ],
                            ),
                          )
                        : viewModel.pageIndex == 3
                            ? RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Make a move',
                                      style: TextStyleManager.regularTextStyle(
                                        fontSize:
                                            getProportionateScreenHeight(32),
                                        color: ColorManager.yellow,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' (or don’T)\nit’s up to you to!',
                                      style: TextStyleManager.regularTextStyle(
                                        fontSize:
                                            getProportionateScreenHeight(32),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : viewModel.pageIndex == 4
                                ? kText32(
                                    'say goodbye at anytime if\ntHE VIBES AREN’T right!',
                                    textAlign: TextAlign.center,
                                  )
                                : Container(
                                    //width: double.infinity,
                                    color: ColorManager.primary,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        const Spacer(),
                                        kText28('Membership Options'),
                                        buildVerticleSpace(
                                            getProportionateScreenHeight(29)),
                                        DefaultTabController(
                                          length: 3,
                                          child: Container(
                                            height:
                                                getProportionateScreenHeight(
                                                    39),
                                            width: getProportionateScreenWidth(
                                                318),
                                            decoration: BoxDecoration(
                                              color: ColorManager.white
                                                  .withOpacity(0.7),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getProportionateScreenHeight(
                                                    10),
                                              ),
                                            ),
                                            child: TabBar(
                                              onTap: (value) {
                                                viewModel.nextPlan(value);
                                              },
                                              labelColor: ColorManager.white,
                                              unselectedLabelColor:
                                                  ColorManager.primary,
                                              unselectedLabelStyle:
                                                  TextStyleManager
                                                      .regularTextStyle(
                                                color: ColorManager.primary,
                                                fontSize:
                                                    getProportionateScreenHeight(
                                                        16),
                                              ),
                                              labelStyle: TextStyleManager
                                                  .boldTextStyle(
                                                fontSize:
                                                    getProportionateScreenHeight(
                                                        16),
                                              ),
                                              labelPadding: EdgeInsets.zero,
                                              indicator: BoxDecoration(
                                                  border: Border.all(
                                                      color:
                                                          ColorManager.primary),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getProportionateScreenHeight(
                                                        10),
                                                  ),
                                                  color: ColorManager.accent),
                                              tabs: const [
                                                Tab(
                                                  text: 'Monthly',
                                                ),
                                                Tab(
                                                  text: 'Quarterly',
                                                ),
                                                Tab(
                                                  text: 'Annual',
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        buildVerticleSpace(
                                            getProportionateScreenHeight(43)),
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:
                                                    '\$${viewModel.subsPrices[viewModel.planIndex]}',
                                                style: TextStyleManager
                                                    .regularTextStyle(
                                                  fontSize:
                                                      getProportionateScreenHeight(
                                                          80),
                                                  color: ColorManager.white,
                                                ),
                                              ),
                                              TextSpan(
                                                text: ' /MONTH',
                                                style: TextStyleManager
                                                    .regularTextStyle(
                                                  fontSize:
                                                      getProportionateScreenHeight(
                                                          14),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        buildVerticleSpace(
                                            getProportionateScreenHeight(22)),
                                        kText10(viewModel.planIndex == 0
                                            ? '(\$${viewModel.subsPrices[viewModel.planIndex]} billed every month)'
                                            : viewModel.planIndex == 1
                                                ? '(\$${viewModel.subsPrices[viewModel.planIndex] * 3} billed every month)'
                                                : '(\$${viewModel.subsPrices[viewModel.planIndex] * 12} billed every month)'),
                                        buildVerticleSpace(
                                            getProportionateScreenHeight(41)),
                                        ElevatedButton(
                                          // style: ElevatedButton.styleFrom(
                                          //   backgroundColor: viewModel.notificationAccess == true
                                          //       ? ColorManager.accent
                                          //       : ColorManager.secondary,
                                          // ),
                                          onPressed: () {
                                            Get.toNamed(Routes.bottomNavRoute);
                                          },
                                          child: kText24('Confirmed'),
                                        ),
                                        buildVerticleSpace(
                                            getProportionateScreenHeight(29)),
                                        InkWell(
                                          onTap: () {
                                            Get.toNamed(
                                                Routes.verificationCodeRoute);
                                          },
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Have a code?',
                                                  style: TextStyleManager
                                                      .regularTextStyle(
                                                    fontSize:
                                                        getProportionateScreenHeight(
                                                            12),
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: 'Enter it here',
                                                  style: TextStyleManager
                                                      .regularTextStyle(
                                                    fontSize:
                                                        getProportionateScreenHeight(
                                                            14),
                                                    color: ColorManager.yellow,
                                                  ),
                                                ),
                                                // TextSpan(
                                                //   text: '  you get a new match',
                                                //   style: TextStyleManager.regularTextStyle(
                                                //     fontSize: getProportionateScreenHeight(32),
                                                //   ),
                                                // ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        buildVerticleSpace(
                                            getProportionateScreenHeight(32)),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal:
                                                  getProportionateScreenWidth(
                                                      68)),
                                          child: kText8(
                                            'With a subscription you will gain full access to the community, including the ability to meet and chat with other members, for the length of your subscription. if you don’t feel like it’s worth it cancel anytime for free. The subscription will auotmatically renww unless auto-renew is turned off.',
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        const Spacer()
                                      ],
                                    ),
                                  ),
          ),
          floatingActionButton: CircleButtonWidget(onTap: () {
            // Get.toNamed(Routes.signUpFinalRoute);
            viewModel.nextPage();
          }),
        ),
      ),
    );
  }
}
