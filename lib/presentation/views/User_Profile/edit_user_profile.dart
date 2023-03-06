import 'dart:convert';

import 'package:eight_date_app/app/index.dart';
import 'package:eight_date_app/presentation/views_models/edit_profile_view_model/edit_profile_view_model.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<EditUserProfileViewModel>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              Get.back();
            },
            color: ColorManager.white,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                buildVerticleSpace(getProportionateScreenHeight(90)),
                Text(
                  'Profile Photos',
                  style: TextStyleManager.regularTextStyle(
                    fontSize: getProportionateScreenHeight(36),
                    color: ColorManager.yellow,
                  ),
                ),
                buildVerticleSpace(getProportionateScreenHeight(7)),
                kText10('Tap to edit, hold to reorder'),
                buildVerticleSpace(getProportionateScreenHeight(15)),
                SizedBox(
                  height: 120,
                  child: ListView.separated(
                    itemCount: 6,
                    // itemExtent: getProportionateScreenWidth(50),
                    separatorBuilder: (context, index) =>
                        buildHorizontalSpace(10),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, index) {
                      return Column(
                        children: [
                          InkWell(
                            onTap: () {
                              viewModel.setImage();
                            },
                            child: Container(
                              height: getProportionateScreenHeight(110),
                              width: getProportionateScreenWidth(66),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: ColorManager.white,
                                ),
                                borderRadius: BorderRadius.circular(
                                  getProportionateScreenHeight(5),
                                ),
                              ),
                              alignment: Alignment.center,
                              child: viewModel.image == null
                                  ? Icon(
                                      Icons.add_circle_outline_rounded,
                                      color: ColorManager.yellow,
                                      size: getProportionateScreenHeight(20),
                                    )
                                  : Image.memory(
                                      base64Decode(viewModel.image!)),
                            ),
                          ),
                          kText10('abc')
                        ],
                      );
                    },
                  ),
                ),
                buildVerticleSpace(getProportionateScreenHeight(40)),
                Text(
                  'Background',
                  style: TextStyleManager.regularTextStyle(
                    fontSize: getProportionateScreenHeight(36),
                    color: ColorManager.yellow,
                  ),
                ),
                buildVerticleSpace(getProportionateScreenHeight(8)),
                kText10('Add a quick bio about yourself'),
                buildVerticleSpace(getProportionateScreenHeight(33)),
                Column(
                  children: [
                    //   buildVerticleSpace(100),
                    buildVerticleSpace(28),
                    Container(
                      padding: EdgeInsets.all(
                        getProportionateScreenHeight(15),
                      ),
                      decoration: BoxDecoration(
                        color: ColorManager.grey.withOpacity(0.5),
                        border: Border.all(
                          color: ColorManager.grey1,
                        ),
                        borderRadius: BorderRadius.circular(
                          getProportionateScreenHeight(10),
                        ),
                      ),
                      child: Column(
                        children: [
                          TextField(
                            textInputAction: TextInputAction.done,
                            controller: viewModel.bioTextController,
                            maxLines: 12,
                            //maxLength: 100,
                            style: TextStyleManager.regularTextStyle(
                              fontSize: getProportionateScreenHeight(32),
                            ),
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                            onChanged: viewModel.onAddInstaName,
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
                buildVerticleSpace(getProportionateScreenHeight(40)),
                Text(
                  'Intrests',
                  style: TextStyleManager.regularTextStyle(
                    fontSize: getProportionateScreenHeight(36),
                    color: ColorManager.yellow,
                  ),
                ),
                buildVerticleSpace(getProportionateScreenHeight(7)),
                kText10(
                  'Select intrests(3)',
                ),
                Wrap(
                  spacing: getProportionateScreenWidth(12),
                  runSpacing: getProportionateScreenHeight(9),
                  children: viewModel.interests
                      .map(
                        (interest) => InkWell(
                          onTap: () {
                            viewModel.selectInterest(interest);
                          },
                          child: SizedBox(
                            // height: getProportionateScreenHeight(42),
                            // width: getProportionateScreenWidth(93),
                            child: Chip(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              backgroundColor:
                                  viewModel.selectedInterest.contains(interest)
                                      ? Colors.green
                                      : null,
                              label: Text(
                                interest,
                                style: TextStyleManager.mediumTextStyle(
                                  fontSize: getProportionateScreenHeight(20),
                                  color: ColorManager.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
                buildVerticleSpace(100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
