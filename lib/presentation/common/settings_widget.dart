import '../../app/index.dart';

class SettingViewWidget extends StatelessWidget {
  IconData? iconData;
  Color? color;
  String? title;
  VoidCallback? ontap;
  SettingViewWidget({
    this.color,
    this.ontap,
    this.iconData,
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
          Icon(
            iconData,
            color: color,
            size: 60,
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
