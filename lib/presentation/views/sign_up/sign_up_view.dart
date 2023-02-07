import 'package:eight_date_app/presentation/common/circle_button.dart';
import 'package:eight_date_app/presentation/src/index.dart';
import 'package:eight_date_app/presentation/views_models/sign_up_view_model/sign_up_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<SignUpViewModel>(context);
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(44),
          ),
          child: viewModel.bodyList[viewModel.tabIndex],
        ),
      ),
      floatingActionButton: CircleButtonWidget(
        onTap: viewModel.tabIndex == 0
            ? viewModel.firstName.isEmpty || viewModel.lastName.isEmpty
                ? null
                : () => viewModel.next()
            : viewModel.tabIndex == 1
                ? viewModel.email.isEmpty
                    ? null
                    : () => viewModel.next()
                : viewModel.age == '0'
                    ? null
                    : () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              backgroundColor: ColorManager.lightGrey,
                              insetPadding: EdgeInsets.symmetric(
                                horizontal: getProportionateScreenWidth(15),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: getProportionateScreenWidth(22),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    buildVerticleSpace(60),
                                    Text(
                                      'Please confirm\nyour info',
                                      style: TextStyleManager.regularTextStyle(
                                        fontSize:
                                            getProportionateScreenHeight(48),
                                        color: ColorManager.primary,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    buildVerticleSpace(60),
                                    Text(
                                      'age ${viewModel.age}',
                                      style: TextStyleManager.regularTextStyle(
                                        fontSize:
                                            getProportionateScreenHeight(36),
                                        color: ColorManager.primary,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    buildVerticleSpace(20),
                                    Text(
                                      'birthdAy: ${viewModel.getMonth}',
                                      style: TextStyleManager.regularTextStyle(
                                        fontSize:
                                            getProportionateScreenHeight(20),
                                        color: ColorManager.primary,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    buildVerticleSpace(60),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: ColorManager.primary,
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        'confirm',
                                        style:
                                            TextStyleManager.regularTextStyle(
                                          fontSize:
                                              getProportionateScreenHeight(14),
                                        ),
                                      ),
                                    ),
                                    buildVerticleSpace(20),
                                    TextButton(
                                      onPressed: () {
                                        Get.back();
                                      },
                                      child: Text(
                                        'Edit',
                                        style:
                                            TextStyleManager.regularTextStyle(
                                          color: ColorManager.darkGrey,
                                          fontSize:
                                              getProportionateScreenHeight(14),
                                        ),
                                      ),
                                    ),
                                    buildVerticleSpace(35),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
      ),
    );
  }
}
