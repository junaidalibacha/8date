import 'package:eight_date_app/app/index.dart';
import 'package:eight_date_app/presentation/views_models/sign_up_view_model/sign_up_view_model.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';

class SelectBirthDayView extends StatelessWidget {
  const SelectBirthDayView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<SignUpViewModel>(context);
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "what's your birthday?",
            style: TextStyleManager.regularTextStyle(
              fontSize: getProportionateScreenHeight(40),
            ),
            textAlign: TextAlign.center,
          ),
          buildVerticleSpace(120),
          SizedBox(
            child: DatePickerWidget(
              looping: false,
              initialDate: DateTime(2023),
              firstDate: DateTime(1960),
              lastDate: DateTime(2023),
              dateFormat: "MMMM/d/yyyy",
              onChange: (newDate, _) {
                viewModel.selectDate(newDate);
              },
              pickerTheme: DateTimePickerTheme(
                backgroundColor: Colors.transparent,
                confirmTextStyle: TextStyleManager.regularTextStyle(
                  fontSize: getProportionateScreenHeight(24),
                  //   color: ColorManager.accent,
                ),
                itemTextStyle: TextStyleManager.regularTextStyle(
                  fontSize: getProportionateScreenHeight(24),
                  color: ColorManager.white,
                ),
                dividerColor: ColorManager.grey,
              ),
            ),
          ),
          kText32("age ${viewModel.age}"),
          buildVerticleSpace(20),
          Text(
            "This can't be changed later",
            style: TextStyleManager.regularTextStyle(
              fontSize: getProportionateScreenHeight(11),
            ),
          ),
        ],
      ),
    );
  }
}
