import 'package:eight_date_app/presentation/common/circle_button.dart';
import 'package:eight_date_app/presentation/src/index.dart';
import 'package:eight_date_app/presentation/views_models/sign_up_view_model/sign_up_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/index.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<SignUpViewModel>(context);
    return SafeArea(
      child: Scaffold(
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
                              return const BdayConfirmationView();
                            },
                          );
                        },
        ),
      ),
    );
  }
}
