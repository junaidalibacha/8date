import 'package:eight_date_app/app/index.dart';
import 'package:eight_date_app/presentation/common/circle_button.dart';

import '../../../views_models/sign_up_view_model/sign_up_view_model.dart';

class EnableNotificationView extends StatelessWidget {
  const EnableNotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<SignUpViewModel>(context);

    return Scaffold(
      body: Center(
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            const Spacer(),
            kText40(
              'Never miss a message\nfrom someone great',
              textAlign: TextAlign.center,
            ),
            buildVerticleSpace(100),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: viewModel.notificationAccess == true
                    ? ColorManager.accent
                    : ColorManager.secondary,
              ),
              onPressed: () {
                viewModel.getNotiAccess(true);
              },
              child: kText24('Enable Notifications'),
            ),
            buildVerticleSpace(16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: viewModel.notificationAccess == false
                    ? ColorManager.accent
                    : ColorManager.secondary,
              ),
              onPressed: () {
                viewModel.getNotiAccess(false);
              },
              child: kText24('Disable notifications'),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
      floatingActionButton: CircleButtonWidget(
        onTap: viewModel.notificationAccess == null
            ? null
            : () => Get.toNamed(Routes.selectCityRoute),
      ),
    );
  }
}
