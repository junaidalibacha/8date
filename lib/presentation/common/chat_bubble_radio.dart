import '../../app/index.dart';

class ChatBubbleRadioWidget<T> extends StatelessWidget {
  final T value;
  final T? groupValue;
  final String? label;
  final Color? selectedColor;

  final ValueChanged<T?> onChanged;

  const ChatBubbleRadioWidget({
    super.key,
    required this.value,
    required this.groupValue,
    this.label,
    required this.onChanged,
    required this.selectedColor,
  });

  Widget _buildRadio() {
    final bool isSelected = value == groupValue;

    return Container(
      width: getProportionateScreenHeight(45),
      height: getProportionateScreenHeight(45),
      decoration: ShapeDecoration(
        shape: CircleBorder(
          side: BorderSide(
            color: isSelected ? ColorManager.white : ColorManager.grey1,
            width: isSelected ? 4 : 1,
          ),
        ),
        color: selectedColor,
      ),
    );
  }

  // Widget _buildText() {
  //   final bool isSelected = value == groupValue;

  //   return Text(
  //     text,
  //     style: TextStyleManager.regularTextStyle(
  //       fontSize: getProportionateScreenHeight(20),
  //       color: isSelected ? ColorManager.white : ColorManager.grey1,
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () => onChanged(value),
          splashColor: ColorManager.accent.withOpacity(0.5),
          borderRadius: BorderRadius.circular(100),
          child: _buildRadio(),
        ),

        // _buildText(),
      ],
    );
  }
}
