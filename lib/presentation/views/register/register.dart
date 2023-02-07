import 'package:eight_date_app/app/constants.dart';
import 'package:eight_date_app/presentation/src/index.dart';
import 'package:eight_date_app/presentation/views_models/register_view_model/register_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../common/index.dart';
import '../../routes/routes.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<RegisterViewModel>(context);
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildVerticleSpace(194),
          kText32("WHAT'S YOUR NUMBER?"),
          buildVerticleSpace(64),
          Row(
            children: [
              _buildCountryCodePicker(viewModel, context),
              _buildPhoneTextField(viewModel),
            ],
          ),
          buildVerticleSpace(110),
        ],
      ),
      floatingActionButton: CircleButtonWidget(
        onTap: viewModel.phoneNumber.length < 10
            ? null
            : () {
                Get.toNamed(Routes.phoneVerificationRoute);
              },
      ),
    );
  }

  Expanded _buildPhoneTextField(RegisterViewModel viewModel) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(
          right: getProportionateScreenWidth(40),
        ),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: ColorManager.white,
            ),
          ),
        ),
        child: TextFormField(
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.done,
          maxLines: 1,
          style: TextStyleManager.regularTextStyle(
            fontSize: getProportionateScreenHeight(40),
          ),
          // validator: (value) => viewModel.validate(value),
          onChanged: (newValue) => viewModel.onChange(newValue),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              vertical: getProportionateScreenHeight(10),
            ),
            // labelText: 'Enter Phone Number',
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  GestureDetector _buildCountryCodePicker(
      RegisterViewModel viewModel, BuildContext context) {
    return GestureDetector(
      onTap: () {
        viewModel.onSelect(context);
      },
      child: Container(
        decoration: const BoxDecoration(
          // color: Colors.red,
          border: Border(
            bottom: BorderSide(
              color: Colors.white,
            ),
          ),
        ),
        padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenHeight(10),
        ),
        margin: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(25),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(4),
              ),
              child: SizedBox(
                height: getProportionateScreenHeight(22),
                width: getProportionateScreenWidth(26),
                child: viewModel.countryCode != null
                    ? viewModel.countryCode!.flagImage
                    : null,
              ),
            ),
            kText40(
              viewModel.countryCode?.dialCode ?? '+1',
            ),
          ],
        ),
      ),
    );
  }
}
