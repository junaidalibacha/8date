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
              spacing: getProportionateScreenWidth(5),
              runSpacing: getProportionateScreenHeight(9),
              children: List.generate(
                viewModel.interests.length,
                (index) => ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      vertical: getProportionateScreenHeight(20),
                      horizontal: getProportionateScreenWidth(30),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    minimumSize: const Size(0, 0),
                  ),
                  onPressed: () {},
                  child: Text(
                    viewModel.interests[index],
                    style: TextStyleManager.mediumTextStyle(
                      fontSize: getProportionateScreenHeight(24),
                      color: ColorManager.primary,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: CircleButtonWidget(onTap: () {
        Get.toNamed(Routes.addInstaNameRoute);
      }),
    );
  }
}
