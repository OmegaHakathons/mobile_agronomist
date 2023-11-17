import 'dart:isolate';
import 'package:ekzh/services/secure_storage_service.dart';
import 'package:encrypt/encrypt.dart';

class CryptoService {

  late final cryptoKey = "CryptoKey";

  late Encrypter cryptor;
  IV get iv => IV.allZerosOfLength(16);

  var isInitialized = false;

  static final CryptoService _instance = CryptoService._internal();

  factory CryptoService() {
    return _instance;
  }

  CryptoService._internal() {
      // init logic
  }

  Future<void> initialize() async {
      final key = await SecureStorageService().getKey();
      if (key != null) {
        cryptor = Encrypter(AES(Key.fromBase64(key)));
      } else {
        final key = Key.fromSecureRandom(32);
        cryptor = Encrypter(AES(key));
        await SecureStorageService().saveKey(key.base64);
      }
      // await SecureStorageService().removeKey();
      isInitialized = true;
  }

  Future<String> encode(String string) async {
    return await Isolate.run(() { 
      return cryptor.encrypt(string, iv: iv).base64;
    });
  }

  Future<String> decode(String string) async {
    return await Isolate.run(() {
      return cryptor.decrypt64(string, iv: iv);
    });
  }
   
}