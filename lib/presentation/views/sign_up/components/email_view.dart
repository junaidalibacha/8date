import 'package:eight_date_app/app/index.dart';
import 'package:eight_date_app/presentation/views_models/sign_up_view_model/sign_up_view_model.dart';

import 'textfield_widget.dart';

class EmailView extends StatelessWidget {
  const EmailView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<SignUpViewModel>(context);
    return Form(
      child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          buildVerticleSpace(40),
          Center(child: kText32('What\'s Your email?')),
          buildVerticleSpace(100),
          TextFieldWidget(
            keyboardType: TextInputType.emailAddress,
            hintText: 'EMAIL@EXAMPLE.COM',
            validator: (value) =>
                value!.isValidEmail() ? null : 'Invalid Email',
            onChange: (newValue) => viewModel.onEmailChange(newValue),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: getProportionateScreenHeight(30)),
            child: Row(
              children: [
                Transform.scale(
                  scale: getProportionateScreenHeight(1.5),
                  child: Radio(
                      activeColor: ColorManager.accent,
                      toggleable: true,
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => Colors.white),
                      value: false,
                      groupValue: viewModel.radioValue,
                      onChanged: (value) {
                        viewModel.handleRadioValueChange();
                      }),
                ),
                Text(
                  'Don\'t send me any marketing communications\nabout 8date Products or services ',
                  style: TextStyleManager.regularTextStyle(
                    color: ColorManager.grey1,
                    fontSize: getProportionateScreenHeight(12),
                  ),
                ),
              ],
            ),
          )
          //   buildVerticleSpace(60),
        ],
      ),
    );
  }
}
