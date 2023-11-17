import 'dart:async';

import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

class ReachabilityService {

  static final ReachabilityService _instance = ReachabilityService._internal();

  final _connection = InternetConnection.createInstance(
      customCheckOptions: [
        InternetCheckOption(uri: Uri.parse('https://lenta.ru')),
        InternetCheckOption(uri: Uri.parse('https://www.gazeta.ru')),
      ],
    );

  factory ReachabilityService() {
    return _instance;
  }

  ReachabilityService._internal() {
      // init logic
  }

  get isNetworkAvailable async => await _connection.hasInternetAccess;

  Stream<InternetStatus> get onStatusChange => _connection.onStatusChange;

}