import '../../../../app/index.dart';
import '../../../views_models/sign_up_view_model/sign_up_view_model.dart';
import 'textfield_widget.dart';

class NameView extends StatelessWidget {
  const NameView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<SignUpViewModel>(context);

    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: kText32("WHAT'S YOUR NAME?")),
          buildVerticleSpace(40),
          TextFieldWidget(
            hintText: 'FIRST NAME',
            validator: (value) {
              if (value == null || value.isEmpty || value.length < 3) {
                return 'Invalid First Name';
              }
              return null;
            },
            onChange: (newValue) => viewModel.onFirstNameChange(newValue),
          ),
          buildVerticleSpace(30),
          TextFieldWidget(
            hintText: 'LAST NAME',
            validator: (value) {
              if (value == null || value.isEmpty || value.length < 3) {
                return 'Invalid Last Name';
              }
              return null;
            },
            onChange: (newValue) => viewModel.onLastNameChange(newValue),
          ),
          buildVerticleSpace(20),
          Text(
            'your last name is always hidden on your profile.',
            style: TextStyleManager.mediumTextStyle(
              color: ColorManager.grey,
              fontSize: getProportionateScreenHeight(12),
            ),
          )
        ],
      ),
    );
  }
}
