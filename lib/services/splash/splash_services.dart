import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc_project/config/routes/routes_name.dart';
import 'package:flutter_bloc_project/services/seesion_manager/session_controller.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    SessionController().getUserInPreference().then(
      (value) {
        if (SessionController().isLogic ?? false) {
          Timer(
              const Duration(seconds: 3),
              () => Navigator.pushNamedAndRemoveUntil(
                    context,
                    RoutesName.homeScreen,
                    (route) => false,
                  ));
        } else {
          Timer(
              const Duration(seconds: 3),
              () => Navigator.pushNamedAndRemoveUntil(
                    context,
                    RoutesName.loginScreen,
                    (route) => false,
                  ));
        }
      },
    ).onError(
      (error, stackTrace) {
        Timer(
            const Duration(seconds: 3),
            () => Navigator.pushNamedAndRemoveUntil(
                  context,
                  RoutesName.loginScreen,
                  (route) => false,
                ));
      },
    );
  }
}
