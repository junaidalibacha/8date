import 'package:eight_date_app/presentation/views_models/settings_view_model/setting_view_model.dart';

import '../../../app/index.dart';
import '../../common/settings_widget.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<SettingsViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SettingViewWidget(
              ontap: () {
                Get.toNamed(Routes.prefrencesView);
              },
              iconData: 'assets/icons/heart_icon2.png',
              color: ColorManager.red,
              title: 'dating Preferences',
            ),
            SettingViewWidget(
              ontap: () {
                Get.toNamed(Routes.notificationSettings);
              },
              iconData: 'assets/icons/noti_icon.png',
              color: ColorManager.yellow,
              title: 'Notifications',
            ),
            SettingViewWidget(
              ontap: () {
                viewModel.launchEmail();
              },
              iconData: 'assets/icons/mail_icon.png',
              color: ColorManager.accent,
              title: 'Contact us',
            ),
          ],
        ),
      ),
    );
  }
}
