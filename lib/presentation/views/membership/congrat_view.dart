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
                                    // TextSpan(
                                    //   text: '  you get a new match',
                                    //   style: TextStyleManager.regularTextStyle(
                                    //     fontSize: getProportionateScreenHeight(32),
                                    //   ),
                                    // ),
                                  ],
                                ),
                              )
                            : viewModel.pageIndex == 4
                                ? kText32(
                                    'say goodbye at anytime if tHE VIBES AREN’T right!',
                                    textAlign: TextAlign.center,
                                  )
                                : const SizedBox(),
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
