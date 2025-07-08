import 'package:flutter/material.dart';

import '../../core/utiles/app_strings.dart';
import '../../features/favourite_qoute/presentation/screens/fav_qoutes.dart';
import '../../features/home_feature/presentation/screens/home_screen.dart';

class Routes {
  static const String initialRoute = '/';

  static const String mainRoute = '/main';
  static const String favouriteQoutesScreenRoute = '/FavouriteQoutesScreen';
}

class AppRoutes {
  static String route = '';

  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(builder: (context) => Container());

      case Routes.mainRoute:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case Routes.favouriteQoutesScreenRoute:
        return MaterialPageRoute(
          builder: (context) => const FavouriteQoutesScreen(),
        );

      // case Routes.resultOfLessonExam:
      //   ResponseOfApplyLessonExmamData model =
      //       settings.arguments as ResponseOfApplyLessonExmamData;
      //   return PageTransition(
      //     child: ResultExamLessonScreen(model: model),
      //     type: PageTransitionType.fade,
      //     alignment: Alignment.center,
      //     duration: const Duration(milliseconds: 800),
      //   );

      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(
          child: Text(AppStrings.noRouteFound),
        ),
      ),
    );
  }
}
