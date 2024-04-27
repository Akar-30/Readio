import 'package:flutter/material.dart';
import 'package:master_mind/screens/book_details_screen/book_details_screen.dart';
import 'package:master_mind/screens/explore_scrolled_screen/explore_scrolled_screen.dart';
import 'package:master_mind/screens/home_screen_container_screen.dart';
import '../screens/app_navigation_screen/app_navigation_screen.dart';
import '../screens/log_in_email_one_screen.dart';
import '../screens/log_in_email_screen.dart';
import '../screens/sign_up_screen.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String signUpScreen = '/sign_up_screen';

  static const String logInEmailScreen = '/log_in_email_screen';

  static const String logInEmailOneScreen = '/log_in_email_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static const String homeScreenContainerScreen =
      '/home_screen_container_screen';

  static const String homeScreenPage = '/home_screen_page';

  static const String bookDetailsScreen = '/book_details_screen';

  static const String exploreScrolledScreen = '/explore_scrolled_screen';

  static const String myLibraryPage = '/my_library_page';

  static Map<String, WidgetBuilder> routes = {
    signUpScreen: (context) => SignUpScreen(),
    logInEmailScreen: (context) => LogInEmailScreen(),
    logInEmailOneScreen: (context) => LogInEmailOneScreen(),
    appNavigationScreen: (context) => const AppNavigationScreen(),
    initialRoute: (context) => LogInEmailOneScreen(),
    homeScreenContainerScreen: (context) => HomeScreenContainerScreen(),
    bookDetailsScreen: (context) => BookDetailsScreen(),
    exploreScrolledScreen: (context) => ExploreScrolledScreen(),
  };
}
