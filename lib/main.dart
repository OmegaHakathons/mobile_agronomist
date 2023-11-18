import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/date_symbol_data_local.dart';
// import 'package:nfc_classic_mifare/nfc_classic_mifare.dart';

import 'common/di.dart';
import 'services/Https_debug_support/my_http_overrides.dart';
import 'services/crypto_service.dart';
import 'services/local_storage.dart';
import 'ui/app.dart';
import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  await Locator.init();
  initializeDateFormatting('ru');

  // remove httpOverrides on production

  // HttpOverrides.global = MyHttpOverrides();
  // WidgetsFlutterBinding.ensureInitialized();
  // await CryptoService().initialize();
  // await Hive.initFlutter();
  // // final repository = await LocalStorage().initialiseHive();
  // final cardRepo = await initialiseHive();

  // await Repository().initialize();
  // Repository().cardRepository = cardRepo;
  // Repository().startGettingRegistr();

  // runApp(App(cardRepository: cardRepo));

  // You may set the permission requests to "provisional" which allows the user to choose what type
// of notifications they would like to receive once the user receives a notification.
//   final notificationSettings =
//       await FirebaseMessaging.instance.requestPermission(provisional: false);

// // For apple platforms, ensure the APNS token is available before making any FCM plugin API calls
//   final apnsToken = await FirebaseMessaging.instance.getToken();
//   if (apnsToken != null) {
//     log('токен $apnsToken');
//   }

  runApp(App());
}
