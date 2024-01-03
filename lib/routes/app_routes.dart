import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/presentation/splash_two_screen/splash_two_screen.dart';
import 'package:kushagra_s_application2/presentation/splash_screen/splash_screen.dart';
import 'package:kushagra_s_application2/presentation/splash_one_screen/splash_one_screen.dart';
import 'package:kushagra_s_application2/presentation/login_one_screen/login_one_screen.dart';
import 'package:kushagra_s_application2/presentation/login_screen/login_screen.dart';
import 'package:kushagra_s_application2/presentation/home_screen/home_screen.dart';
import 'package:kushagra_s_application2/presentation/tutors_two_screen/tutors_two_screen.dart';
import 'package:kushagra_s_application2/presentation/tutors_one_screen/tutors_one_screen.dart';
import 'package:kushagra_s_application2/presentation/tutors_three_screen/tutors_three_screen.dart';
import 'package:kushagra_s_application2/presentation/tutors_screen/tutors_screen.dart';
import 'package:kushagra_s_application2/presentation/profile_four_screen/profile_four_screen.dart';
import 'package:kushagra_s_application2/presentation/profile_one_screen/profile_one_screen.dart';
import 'package:kushagra_s_application2/presentation/profile_tab_container_screen/profile_tab_container_screen.dart';
import 'package:kushagra_s_application2/presentation/help_screen/help_screen.dart';
import 'package:kushagra_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashTwoScreen = '/splash_two_screen';

  static const String splashScreen = '/splash_screen';

  static const String splashOneScreen = '/splash_one_screen';

  static const String loginOneScreen = '/login_one_screen';

  static const String loginScreen = '/login_screen';

  static const String homeScreen = '/home_screen';

  static const String tutorsTwoScreen = '/tutors_two_screen';

  static const String tutorsOneScreen = '/tutors_one_screen';

  static const String tutorsThreeScreen = '/tutors_three_screen';

  static const String tutorsScreen = '/tutors_screen';

  static const String profileFourScreen = '/profile_four_screen';

  static const String profileOneScreen = '/profile_one_screen';

  static const String profilePage = '/profile_page';

  static const String profileTabContainerScreen =
      '/profile_tab_container_screen';

  static const String helpScreen = '/help_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashTwoScreen: SplashTwoScreen.builder,
        splashScreen: SplashScreen.builder,
        splashOneScreen: SplashOneScreen.builder,
        loginOneScreen: LoginOneScreen.builder,
        loginScreen: LoginScreen.builder,
        homeScreen: HomeScreen.builder,
        tutorsTwoScreen: TutorsTwoScreen.builder,
        tutorsOneScreen: TutorsOneScreen.builder,
        tutorsThreeScreen: TutorsThreeScreen.builder,
        tutorsScreen: TutorsScreen.builder,
        profileFourScreen: ProfileFourScreen.builder,
        profileOneScreen: ProfileOneScreen.builder,
        profileTabContainerScreen: ProfileTabContainerScreen.builder,
        helpScreen: HelpScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashTwoScreen.builder
      };
}
