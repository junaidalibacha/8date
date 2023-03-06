import 'package:eight_date_app/app/index.dart';
import 'package:eight_date_app/presentation/common/circle_button.dart';
import 'package:eight_date_app/presentation/views_models/sign_up_view_model/sign_up_view_model.dart';

class AddInterestView extends StatelessWidget {
  const AddInterestView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<SignUpViewModel>(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            buildVerticleSpace(100),
            kText40('Add interests'),
            Text(
              'Select three',
              style: TextStyleManager.mediumTextStyle(
                fontSize: getProportionateScreenHeight(13),
                color: ColorManager.accent,
              ),
            ),
            buildVerticleSpace(50),
            Wrap(
                spacing: getProportionateScreenWidth(12),
                runSpacing: getProportionateScreenHeight(9),
                children: viewModel.interests
                    .map(
                      (interest) => InkWell(
                        onTap: () {
                          viewModel.selectInterest(interest);
                        },
                        child: SizedBox(
                          child: Chip(
                            backgroundColor:
                                viewModel.selectedInterest.contains(interest)
                                    ? ColorManager.accent
                                    : null,
                            label: Text(
                              interest,
                              style: TextStyleManager.mediumTextStyle(
                                fontSize: getProportionateScreenHeight(20),
                                color: ColorManager.primary,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList()),
          ],
        ),
      ),
      floatingActionButton: CircleButtonWidget(
        onTap: viewModel.selectedInterest.length < 3
            ? null
            : () {
                Get.toNamed(Routes.addInstaNameRoute);
              },
      ),
    );
  }
}
