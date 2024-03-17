import 'package:flutter/material.dart';
import 'package:sheetal_kanojia_s_application4/presentation/android_large_one_screen/android_large_one_screen.dart';
import 'package:sheetal_kanojia_s_application4/presentation/android_large_two_screen/android_large_two_screen.dart';
import 'package:sheetal_kanojia_s_application4/presentation/android_large_three_screen/android_large_three_screen.dart';
import 'package:sheetal_kanojia_s_application4/presentation/android_large_four_screen/android_large_four_screen.dart';
import 'package:sheetal_kanojia_s_application4/presentation/android_large_five_screen/android_large_five_screen.dart';
import 'package:sheetal_kanojia_s_application4/presentation/android_large_seven_screen/android_large_seven_screen.dart';
import 'package:sheetal_kanojia_s_application4/presentation/android_large_eight_screen/android_large_eight_screen.dart';
import 'package:sheetal_kanojia_s_application4/presentation/android_large_ten_screen/android_large_ten_screen.dart';
import 'package:sheetal_kanojia_s_application4/presentation/android_large_eleven_tab_container_screen/android_large_eleven_tab_container_screen.dart';
import 'package:sheetal_kanojia_s_application4/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String androidLargeOneScreen = '/android_large_one_screen';

  static const String androidLargeTwoScreen = '/android_large_two_screen';

  static const String androidLargeThreeScreen = '/android_large_three_screen';

  static const String androidLargeFourScreen = '/android_large_four_screen';

  static const String androidLargeFiveScreen = '/android_large_five_screen';

  static const String androidLargeSevenScreen = '/android_large_seven_screen';

  static const String androidLargeEightScreen = '/android_large_eight_screen';

  static const String androidLargeTenScreen = '/android_large_ten_screen';

  static const String androidLargeElevenPage = '/android_large_eleven_page';

  static const String androidLargeElevenTabContainerScreen =
      '/android_large_eleven_tab_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        androidLargeOneScreen: AndroidLargeOneScreen.builder,
        androidLargeTwoScreen: AndroidLargeTwoScreen.builder,
        androidLargeThreeScreen: AndroidLargeThreeScreen.builder,
        androidLargeFourScreen: AndroidLargeFourScreen.builder,
        androidLargeFiveScreen: AndroidLargeFiveScreen.builder,
        androidLargeSevenScreen: AndroidLargeSevenScreen.builder,
        androidLargeEightScreen: AndroidLargeEightScreen.builder,
        androidLargeTenScreen: AndroidLargeTenScreen.builder,
        androidLargeElevenTabContainerScreen:
            AndroidLargeElevenTabContainerScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: AndroidLargeOneScreen.builder
      };
}
