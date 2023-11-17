import 'package:ekzh/services/https_debug_support/my_http_overrides.dart';
import 'package:ekzh/services/crypto_service.dart';
import 'package:ekzh/services/local_storage.dart';
import 'package:ekzh/services/repository.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
// import 'package:nfc_classic_mifare/nfc_classic_mifare.dart';

import 'ui/app.dart';
import 'dart:io';

void main() async {
  // remove httpOverrides on production
  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  await CryptoService().initialize();
  await Hive.initFlutter();
  // final repository = await LocalStorage().initialiseHive();
  final cardRepo = await initialiseHive();

  await Repository().initialize();
  Repository().cardRepository = cardRepo;
  Repository().startGettingRegistr();

  runApp(App(cardRepository: cardRepo));
}
