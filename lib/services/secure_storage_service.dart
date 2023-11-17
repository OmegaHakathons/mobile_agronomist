import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
 

  static final SecureStorageService _instance = SecureStorageService._internal();

  final String _key = "EncryptionKey";
  final String _tokenKey = "TokenKey";
  final String _finalDateTime = "LastUpdated";
// Create storage
  final FlutterSecureStorage storage = FlutterSecureStorage(aOptions: AndroidOptions(encryptedSharedPreferences: true));

  factory SecureStorageService() {
    return _instance;
  }

  SecureStorageService._internal() {
      // init logic
  }

  // MARK: - Crypto Key
  Future<void> saveKey(String value) async {
    return await storage.write(key: _key, value: value);
  }

  Future<String?> getKey() async {
    return await storage.read(key: _key);
  }

  Future<void> removeKey() async {
    return await storage.delete(key: _key);
  }

  Future<void> removeAll() async {
    return await storage.deleteAll();
  }

  // MARK: - Token
  Future<void> saveToken(String value) async {
    return await storage.write(key: _tokenKey, value: value);
  }

  Future<String?> getToken() async {
    return await storage.read(key: _tokenKey);  
  }

  Future<void> removeToken() async {
    return await storage.delete(key: _tokenKey);
  }

  // Mark:- Register Update DateTime
  Future<void> saveLastupdateDateTime( DateTime value) async {
    final string = value.toUtc().toString();
    return await storage.write(key: _finalDateTime, value: string);
  }

  Future<String?> getLastupdateDateTime() async {
    return await storage.read(key: _finalDateTime);
  }

  Future<void> removeLastupdateDateTime() async {
    return await storage.delete(key: _finalDateTime);
  }

}

