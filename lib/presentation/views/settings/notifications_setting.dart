import 'package:flutter_switch/flutter_switch.dart';

import '../../../app/index.dart';
import '../../views_models/settings_view_model/setting_view_model.dart';

class NotificationSettings extends StatelessWidget {
  const NotificationSettings({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<SettingsViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: kText20('Notifications'),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(40)),
        child: Column(
          children: [
            buildVerticleSpace(100),
            NotiRadioWidget(
              // viewModel: viewModel,
              title: 'Enable All notification',
              value: viewModel.enableNoti,
              onToggle: (value) => viewModel.enableNotiTogle(value),
            ),
            buildVerticleSpace(50),
            NotiRadioWidget(
              title: 'Daily match reminder',
              value: viewModel.reminderNoti,
              onToggle: (value) => viewModel.reminderTogle(value),
            ),
            buildVerticleSpace(50),
            NotiRadioWidget(
              //  viewModel: viewModel,
              title: 'new messages',
              value: viewModel.messageNoti,
              onToggle: (value) => viewModel.msgTogle(value),
            ),
          ],
        ),
      ),
    );
  }
}

class NotiRadioWidget extends StatelessWidget {
  NotiRadioWidget({
    super.key,
    // required this.viewModel,
    required this.title,
    required this.value,
    required this.onToggle,
  });

  // final SettingsViewModel viewModel;
  String title;
  final bool value;
  final Function(bool) onToggle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        kText24(title),
        FlutterSwitch(
          width: getProportionateScreenWidth(50),
          height: getProportionateScreenHeight(25),
          toggleSize: getProportionateScreenHeight(20),
          padding: getProportionateScreenHeight(3),
          activeColor: Colors.green,
          value: value,
          onToggle: onToggle,
        ),
      ],
    );
  }
}
