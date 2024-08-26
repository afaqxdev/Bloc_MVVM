import 'package:flutter/material.dart';
import 'package:flutter_bloc_project/config/routes/routes_name.dart';

import '../../views/view.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case RoutesName.loginScreen:
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());

      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text('No Screen Found'),
            ),
          ),
        );
    }
  }
}
