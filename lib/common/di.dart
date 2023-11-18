import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';

import 'firebase_settings.dart';

abstract class Locator {
  static final _locator = GetIt.instance;

  static FirebaseSettings get firebaseSettings => _locator<FirebaseSettings>();

  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await FirebaseSettings.initFirebase();

    _locator.registerLazySingleton<FirebaseSettings>(() => FirebaseSettings());
  }
}
