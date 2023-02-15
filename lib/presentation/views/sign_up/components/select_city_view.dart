import 'package:eight_date_app/app/index.dart';
import 'package:eight_date_app/presentation/views_models/sign_up_view_model/sign_up_view_model.dart';

import '../../../common/index.dart';

class SelectCityView extends StatelessWidget {
  const SelectCityView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<SignUpViewModel>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            kText40("what's your city?"),
            buildVerticleSpace(10),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(66),
              ),
              child: Column(
                children: List.generate(
                  viewModel.cities.length,
                  (index) => Padding(
                    padding: EdgeInsets.only(
                      top: getProportionateScreenHeight(36),
                    ),
                    child: RadioButtonWidget(
                      value: viewModel.cities[index],
                      groupValue: viewModel.city,
                      text: viewModel.cities[index],
                      onChanged: viewModel.selectCiy(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: CircleButtonWidget(
        onTap: viewModel.city == null
            ? null
            : () {
                Get.toNamed(Routes.selectGenderRoute);
              },
      ),
    );
  }
}
