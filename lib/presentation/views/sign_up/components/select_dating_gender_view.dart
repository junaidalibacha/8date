import 'package:eight_date_app/app/index.dart';
import 'package:eight_date_app/presentation/views_models/sign_up_view_model/sign_up_view_model.dart';

import '../../../common/index.dart';

class SelectDatingGenderView extends StatelessWidget {
  const SelectDatingGenderView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<SignUpViewModel>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            kText40(
              "Who do you\nwant to date?",
              textAlign: TextAlign.center,
            ),
            buildVerticleSpace(10),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(66),
              ),
              child: Column(
                children: List.generate(
                  viewModel.genders.length,
                  (index) => Padding(
                    padding: EdgeInsets.only(
                      top: getProportionateScreenHeight(36),
                    ),
                    child: RadioButtonWidget(
                      value: viewModel.genders[index],
                      groupValue: viewModel.datingGender,
                      text: viewModel.genders[index],
                      onChanged: viewModel.selectDatingGender(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: CircleButtonWidget(
        onTap: viewModel.datingGender == null
            ? null
            : () {
                Get.toNamed(Routes.addProfilePicRoute);
              },
      ),
    );
  }
}
