import 'package:eight_date_app/app/index.dart';
import 'package:eight_date_app/presentation/common/circle_button.dart';
import 'package:eight_date_app/presentation/views_models/profile_view_model/profile_view_model.dart';

class AddBioView extends StatelessWidget {
  const AddBioView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<ProfileViewModel>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(17),
          ),
          child: Column(
            children: [
              buildVerticleSpace(100),
              kText40('add bio'),
              buildVerticleSpace(28),
              Container(
                padding: EdgeInsets.all(
                  getProportionateScreenHeight(15),
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorManager.grey1,
                  ),
                  borderRadius: BorderRadius.circular(
                    getProportionateScreenHeight(10),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(15),
                        vertical: getProportionateScreenHeight(30),
                      ),
                      child: TextField(
                        textInputAction: TextInputAction.done,
                        controller: viewModel.bioTextController,
                        maxLines: 12,
                        maxLength: 100,
                        style: TextStyleManager.regularTextStyle(
                          fontSize: getProportionateScreenHeight(32),
                        ),
                        decoration: InputDecoration(
                          hintText: 'ENTER tEXT HERE...',
                          hintStyle: TextStyleManager.mediumTextStyle(
                              color: ColorManager.grey1,
                              fontSize: getProportionateScreenHeight(20)),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                        onChanged: viewModel.onAddInstaName,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: kText13(
                        viewModel.counter().toString(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: CircleButtonWidget(
        onTap: viewModel.bioText.isEmpty
            ? null
            : () {
                Get.toNamed(Routes.addInterestRoute);
              },
      ),
    );
  }
}
