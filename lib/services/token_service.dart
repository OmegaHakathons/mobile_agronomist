
// manipurate token from local storage  
// todo: process expiration date
import 'package:ekzh/services/secure_storage_service.dart';

class TokenService {

  static final TokenService _instance = TokenService._internal();

  factory TokenService() {
    return _instance;
  }

  TokenService._internal() {
      // init logic
  }

  String? _token;
  SecureStorageService _service = SecureStorageService();

  Future<String?> getToken() async {
    if (_token != null) {
      return Future.sync(() => _token);
    } else {
      return _service.getToken();
    }
  }

  // Saving empty token causes deleting token
  // equal token causes doing nothing
  Future<void> saveToken(String? value) async {
    if (value == null) {
      _token;
      return _service.removeToken();
    } else if (value == _token) {
      return Future.sync(() => null);
    } else {
      _token = value;
      return _service.saveToken(value);
    }
  }

}