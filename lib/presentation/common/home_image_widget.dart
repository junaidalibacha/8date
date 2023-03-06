import '../../app/index.dart';

class HomeImageWidget extends StatelessWidget {
  String? imagePath;
  HomeImageWidget({
    this.imagePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenHeight -
          kToolbarHeight -
          kBottomNavigationBarHeight -
          30,
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(getProportionateScreenHeight(20)),
      ),
      child: Image.asset(
        imagesPath,
      ),
    );
  }
}
