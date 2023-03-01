import 'package:eight_date_app/app/index.dart';
import 'package:eight_date_app/presentation/common/circle_button.dart';
import 'package:eight_date_app/presentation/views/membership/congrat_view.dart';

class UnderReview extends StatelessWidget {
  const UnderReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(52)),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.congratsRoute);
                },
                child: kText36(
                    'your application is under review by our membership team. ',
                    textAlign: TextAlign.center),
              ),
              CircleButtonWidget(onTap: () {
                Get.to(const CongratsView());
              })
            ],
          ),
        ),
      ),
    );
  }
}
