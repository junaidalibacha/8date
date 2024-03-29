import 'package:eight_date_app/app/index.dart';
import 'package:eight_date_app/presentation/views/profile/under_review.dart';

class SingUpFinalView extends StatelessWidget {
  const SingUpFinalView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "That's all!",
          style: TextStyleManager.regularTextStyle(
            fontSize: getProportionateScreenHeight(48),
          ),
        ),
      ),
      bottomSheet: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(
            SizeConfig.screenWidth,
            getProportionateScreenHeight(93),
          ),
          padding: EdgeInsets.zero,
          shape: const BeveledRectangleBorder(),
        ),
        onPressed: () {
          Get.to(const UnderReview());
        },
        child: kText20('Submit profile'),
      ),
    );
  }
}
