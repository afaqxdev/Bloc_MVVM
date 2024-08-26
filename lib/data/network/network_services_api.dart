import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc_project/data/exception/app_exception.dart';
import 'package:flutter_bloc_project/data/network/base_api_services.dart';
import 'package:http/http.dart' as https;

class NetworkServicesApi implements BaseApiServices {
  @override
  Future getApi(String url) async {
    dynamic jsonResponse;
    try {
      final response = await https
          .get(
            Uri.parse(url),
          )
          .timeout(const Duration(seconds: 50));
      jsonResponse = returnResponse(response);
    } on SocketException {
      throw NoInternetException('No internet connection');
    } on TimeoutException {
      throw RequestTimeOutException("Request timed out");
    }
    return jsonResponse;
  }

  @override
  Future postApi(String url, data) async {
    dynamic jsonResponse;
    if (kDebugMode) {
      print(url);
      print(data);
    }

    try {
      final response = await https
          .post(Uri.parse(url), body: data)
          .timeout(const Duration(seconds: 50));
      jsonResponse = returnResponse(response);
    } on SocketException {
      throw NoInternetException('No internet connection');
    } on TimeoutException {
      throw RequestTimeOutException("Request timed out");
    }
    return jsonResponse;
  }

  dynamic returnResponse(https.Response response) {
    switch (response.statusCode) {
      case 200:
        return jsonDecode(response.body);
      case 400:
        return jsonDecode(response.body);
      case 401:
        throw UnAuthorisedException('Unauthorized request');
      case 403:
        throw UnAuthorisedException('Forbidden request');
      case 500:
        throw FetchDataException(
            'Error while communicating with server: ${response.statusCode}');
      default:
        throw FetchDataException(
            'Unexpected error occurred with status code: ${response.statusCode}');
    }
  }
}
