import 'package:eight_date_app/app/index.dart';
import 'package:eight_date_app/presentation/views_models/settings_view_model/setting_view_model.dart';

import '../../common/radio_button.dart';

class SettingCities extends StatelessWidget {
  const SettingCities({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<SettingsViewModel>(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            kText24("I'm INSTRESTED IN..."),
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
    );
  }
}
