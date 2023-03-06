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
              iconData: Icons.favorite_rounded,
              color: ColorManager.red,
              title: 'dating prefrences',
            ),
            SettingViewWidget(
              ontap: () {
                Get.toNamed(Routes.notificationSettings);
              },
              iconData: Icons.notifications,
              color: ColorManager.yellow,
              title: 'Notifications',
            ),
            SettingViewWidget(
              ontap: () {
                viewModel.launchEmail();
              },
              iconData: Icons.email,
              color: ColorManager.accent,
              title: 'Contact us',
            ),
          ],
        ),
      ),
    );
  }
}
