import 'package:task_tracker_app/constants/colors.dart';
import 'package:task_tracker_app/constants/images.dart';
import 'package:task_tracker_app/constants/texts.dart';

class AppLists {
  static List<String> homeMenuList = ["Task List", "Completed"];
  static List<String> homeCategoryImageList = [
    AppImages.HOME_CATEGORY_ICON_1,
    AppImages.HOME_CATEGORY_ICON_2,
    AppImages.HOME_CATEGORY_ICON_3,
  ];

  static List<String> homeCategoryColorList = [
    AppColors.lightYellowColor,
    AppColors.lightGreenColor,
    AppColors.lightPurpleColor,
  ];

  static List<String> homeCategoryNameList = [
    AppTexts.works,
    AppTexts.sport,
    AppTexts.habits,
  ];
}
