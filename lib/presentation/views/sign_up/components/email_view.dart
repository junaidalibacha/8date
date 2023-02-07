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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFieldWidget(
            keyboardType: TextInputType.emailAddress,
            hintText: 'EMAIL@EXAMPLE.COM',
            validator: (value) =>
                value!.isValidEmail() ? null : 'Invalid Email',
            onChange: (newValue) => viewModel.onEmailChange(newValue),
          ),
        ],
      ),
    );
  }
}
