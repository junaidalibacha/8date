import 'package:eight_date_app/app/index.dart';
import 'package:eight_date_app/presentation/common/circle_button.dart';

class AddProfilePicView extends StatelessWidget {
  const AddProfilePicView({super.key});

  @override
  Widget build(BuildContext context) {
    // bool showFloatButton = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(18),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            buildVerticleSpace(100),
            kText40('add profile pictures'),
            buildVerticleSpace(28),
            GridView.builder(
              itemCount: 6,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: getProportionateScreenHeight(0.95),
                mainAxisSpacing: getProportionateScreenHeight(8),
                crossAxisSpacing: getProportionateScreenWidth(8),
              ),
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorManager.white,
                  ),
                  borderRadius: BorderRadius.circular(
                    getProportionateScreenHeight(5),
                  ),
                ),
                alignment: Alignment.center,
                child: Icon(
                  Icons.add_circle_outline_rounded,
                  color: ColorManager.white,
                  size: getProportionateScreenHeight(20),
                ),
              ),
            ),
            buildVerticleSpace(10),
            Row(
              children: [
                Text(
                  '5 required',
                  style: TextStyleManager.regularTextStyle(
                    fontSize: getProportionateScreenHeight(13),
                    color: ColorManager.grey1,
                  ),
                ),
                const Spacer(),
                Text(
                  'Drag to reorder',
                  style: TextStyleManager.regularTextStyle(
                    fontSize: getProportionateScreenHeight(13),
                    color: ColorManager.grey1,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: CircleButtonWidget(onTap: () {
        Get.toNamed(Routes.addBioRoute);
      }),
    );
  }
}
