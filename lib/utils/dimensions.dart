import 'package:get/get.dart';

class Dimensions {
  // Get Height and Width
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  // Page View
  static double pageView = screenHeight / 2.64;
  static double pageViewController = screenHeight / 3.84;
  static double pagaeViewTextController = screenHeight / 7.03;

  // Dynamic HEIGHT padding and margin
  static double height10 = screenHeight / 84.4;
  static double height15 = screenHeight / 56.27;
  static double height20 = screenHeight / 42.2;
  static double height30 = screenHeight / 28.13;
  static double height45 = screenHeight / 18.76;

  // Dynamic WIDTH padding and margin
  static double width10 = screenHeight / 84.4;
  static double width15 = screenHeight / 56.27;
  static double width20 = screenHeight / 42.2;
  static double width30 = screenHeight / 28.13;

  // Font Size
  static double font16 = screenHeight / 52.75;
  static double font20 = screenHeight / 42.2;
  static double font26 = screenHeight / 32.46;

  // Radius
  static double radius15 = screenHeight / 56.27;
  static double radius20 = screenHeight / 42.2;
  static double radius30 = screenHeight / 28.13;

  // Icon Size
  static double iconSize24 = screenHeight / 35.17;
  static double iconSize16 = screenHeight / 52.75;

  // List View Size
  static double listViewImgSize = screenHeight / 3.25;
  static double listViewTextContSize = screenHeight / 3.9;

  // Popular Food
  static double popularFoodImgSize = screenHeight / 2.41;

  // Bottom Height
  static double bottomHeightBar = screenHeight / 7.03;

  // Splash Screen Dimensions
  static double splashImg = screenHeight / 3.38;
}
