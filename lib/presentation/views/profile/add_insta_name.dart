import 'package:eight_date_app/app/index.dart';
import 'package:eight_date_app/presentation/common/circle_button.dart';
import 'package:eight_date_app/presentation/views/sign_up/components/index.dart';
import 'package:eight_date_app/presentation/views_models/profile_view_model/profile_view_model.dart';

class AddInstaNameView extends StatelessWidget {
  const AddInstaNameView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<ProfileViewModel>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(44),
        ),
        child: Column(
          children: [
            const Spacer(flex: 2),
            kText32('What’s your instagram?'),
            buildVerticleSpace(40),
            TextFieldWidget(
              controller: viewModel.instaNameTextController,
              hintText: '@username',
              onChange: (newValue) => viewModel.onAddInstaName(newValue),
            ),
            buildVerticleSpace(21),
            Text(
              'For our membership review team Only',
              style: TextStyleManager.regularTextStyle(
                fontSize: getProportionateScreenHeight(12),
                color: ColorManager.grey1,
              ),
            ),
            const Spacer(flex: 3),
          ],
        ),
      ),
      floatingActionButton: CircleButtonWidget(
          onTap: viewModel.instaNameTextController.text.isEmpty
              ? null
              : () {
                  Get.toNamed(Routes.signUpFinalRoute);
                }),
    );
  }
}
