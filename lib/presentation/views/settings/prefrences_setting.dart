import 'package:eight_date_app/app/index.dart';

import '../../common/radio_button.dart';
import '../../views_models/settings_view_model/setting_view_model.dart';

class PrefrencesSetting extends StatelessWidget {
  const PrefrencesSetting({super.key});

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
            kText24(
              "I'M instrested in..",
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
            buildVerticleSpace(90),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Location: ',
                        style: TextStyleManager.regularTextStyle(
                          fontSize: getProportionateScreenHeight(24),
                          color: ColorManager.white,
                        ),
                      ),
                      TextSpan(
                        text: viewModel.city.toString(),
                        style: TextStyleManager.regularTextStyle(
                            fontSize: getProportionateScreenHeight(24),
                            color: ColorManager.accent),
                      ),
                    ],
                  ),
                )
              ],
            ),
            buildVerticleSpace(40),
            Image.asset(
              'assets/images/image_hollyday.png',
              height: getProportionateScreenHeight(140),
              width: getProportionateScreenWidth(239),
            ),
            buildVerticleSpace(40),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.settingCities);
              },
              child: kText16('Edit'),
            ),
          ],
        ),
      ),
    );
  }
}
