import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorage {
  final storage = const FlutterSecureStorage();

  Future<bool> setValue(String key, String value) async {
    await storage.write(key: key, value: value);
    return true;
  }

  Future<dynamic> readValue(String key, String value) async {
    return await storage.read(
      key: key,
    );
  }

  Future<bool> deleteValue(String key, String value) async {
    await storage.delete(
      key: key,
    );
    return true;
  }
}
