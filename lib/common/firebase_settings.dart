import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:http/http.dart' as http;

import 'package:go_router/go_router.dart';

import '../firebase_options.dart';
import 'logger.dart';

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();

  print("Handling a background message: ${message.messageId}");
}

class FirebaseSettings {
  static Future<void> initFirebase() async {
    logger.d('Firebase initialization started');

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    logger.d('Firebase initialized');

    String? tokenFCM = await FirebaseMessaging.instance.getToken();
    logger.i(tokenFCM);

    _addListeners();
  }

  static void _addListeners() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Got a message whilst in the foreground!');
      print('Message data: ${message.data}');

      if (message.notification != null) {
        print('Message also contained a notification: ${message.notification}');
      }
    });

    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  }

  Future<void> setupInteractedMessage() async {
    RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();

    if (initialMessage != null) {
      _handleMessage(initialMessage);
    }

    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
  }

  Future<void> sendFCMToken(String userToken) async {
    String? tokenFCM = await FirebaseMessaging.instance.getToken();
    logger.i(tokenFCM);

    // final Dio dio = Dio();
    // try {
    //   await dio.post(
    //     '${DOMAIN}api/firebaseToken/mine',
    //     queryParameters: {'token': tokenFCM},
    //     options: Options(headers: {
    //       'Accept': 'application/json',
    //       'Content-type': 'application/x-www-form-urlencoded',
    //       'Authorization': 'Bearer $userToken'
    //     }),
    //   );

    //   logger.i('ОТПРАВИЛИ');
    // } catch (e) {
    //   logger.e(e);
    // }
  }

  void _handleMessage(RemoteMessage message) {
    logger.d('Открыли из уведомления');
    // navigatorKey.currentState!.context.goNamed('notifications', params: {
    //   'tab': '0',
    // });
  }
}





// String url = ApiUrls.baseUrl + ApiUrls.consultationUrl;
//     Map<String, String> headers = {
//       'Accept': 'application/json',
//       'content-type': 'application/x-www-form-urlencoded',
//       'Authorization': 'Bearer $token',
//     };
//     Options options = Options(headers: headers);
//     var cons = consultation.toJson();
//     print(cons);
//     try {
//       await _dio.post(url, options: options, data: cons);
//       print('ЗАПИСАНЫ');
//     } on DioError catch (e) {
//       throw 'Something went wrong :(\n ${e.message}';
//     }