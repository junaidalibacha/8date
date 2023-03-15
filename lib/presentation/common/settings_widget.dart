import '../../app/index.dart';

class SettingViewWidget extends StatelessWidget {
  String iconData;
  Color color;
  String title;
  VoidCallback ontap;
  SettingViewWidget({
    required this.color,
    required this.ontap,
    required this.iconData,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: ontap,
      child: Column(
        children: [
          buildVerticleSpace(100),
          Image.asset(
            iconData,
            height: getProportionateScreenHeight(55),
            width: getProportionateScreenWidth(55),
          ),
          buildVerticleSpace(21),
          kText28(title.toString()),
        ],
      ),
    );
  }
}

class ChatSettingWidget extends StatelessWidget {
  String? iconPath;
  String? title;
  VoidCallback? ontap;
  ChatSettingWidget({
    this.ontap,
    this.iconPath,
    this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: ontap,
      child: Column(
        children: [
          buildVerticleSpace(100),
          Image.asset(
            iconsPath,
            height: getProportionateScreenHeight(50),
            width: getProportionateScreenWidth(50),
          ),
          buildVerticleSpace(21),
          kText28(title.toString()),
        ],
      ),
    );
  }
}
