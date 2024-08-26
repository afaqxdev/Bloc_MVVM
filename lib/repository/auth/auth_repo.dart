import 'package:flutter_bloc_project/config/api_url.dart';
import 'package:flutter_bloc_project/data/network/network_services_api.dart';
import 'package:flutter_bloc_project/model/user/user_model.dart';

class LoginRepository {
  final api = NetworkServicesApi();
  Future<UserModel> loginApi(dynamic data) async {
    final response = await api.postApi(ApiUrl.loginUrl, data);
    print(response);
    return UserModel.fromJson(response);
  }
}
