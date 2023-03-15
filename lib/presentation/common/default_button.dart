import '../../app/index.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.text,
    required this.press,
    required this.height,
    required this.width,
    required this.textColor,
  }) : super(key: key);
  final String text;
  final Function press;
  final double height, width;
  final Color foregroundColor, backgroundColor, textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: () {
          press();
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: foregroundColor,
          backgroundColor: backgroundColor,
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        ),
        child: Text(text,
            style: TextStyleManager.mediumTextStyle(
                color: textColor, fontSize: getProportionateScreenHeight(21))),
      ),
    );
  }
}
