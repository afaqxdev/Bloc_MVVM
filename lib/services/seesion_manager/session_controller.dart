// ignore_for_file: unrelated_type_equality_checks

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc_project/model/user/user_model.dart';
import 'package:flutter_bloc_project/services/storage/local_storage.dart';

class SessionController {
  static final SessionController _sessionController =
      SessionController._internal();
  final LocalStorage localStorage = LocalStorage();
  UserModel userModel = UserModel();
  bool? isLogic;
  SessionController._internal() {
    isLogic = false;
  }
  factory SessionController() {
    return _sessionController;
  }
  Future<void> saveUserInPreference(dynamic user) async {
    localStorage.setValue("token", jsonEncode(user));
    localStorage.setValue("isLogin", 'true');
  }

  Future<void> getUserInPreference() async {
    try {
      var userData = await localStorage.readValue('token');
      var isLogin = await localStorage.readValue("isLogin");
      if (userData.isNotEmpty) {
        SessionController().userModel =
            UserModel.fromJson(jsonDecode(userData));
      }
      SessionController().isLogic = isLogin == 'true' ? true : false;
    } on Exception catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }
}
