import 'dart:async';
import 'dart:developer';

import 'package:hive_flutter/hive_flutter.dart';

import 'entities/card_ekzh.dart';
import 'entities/pending_request.dart';
import 'https_service.dart';
import 'local_storage.dart';
import 'secure_storage_service.dart';

class Repository {
  static final Repository _instance = Repository._internal();

  factory Repository() {
    return _instance;
  }

  Repository._internal() {
    // init logic
  }

  Future initialize() async {
    const cardKey = 'pendingRequests';
    Hive.registerAdapter(PendingRequestAdapter());
    _box = await Hive.openBox<PendingRequest?>(cardKey);
  }

  late Box<PendingRequest?> _box;
  late Timer _timer;

  final _httpService = HttpsService();
  final _secureStorage = SecureStorageService();
  late CardRepository cardRepository;

  void startGettingRegistr() {
    _timer = Timer.periodic(const Duration(hours: 1), (timer) async {
      try {
        final lastUpdateTime = await _secureStorage.getLastupdateDateTime();
        if (lastUpdateTime == null) {
          return;
        }

        final response = await _httpService.getRegistr(
            lastUpdate: DateTime.parse(lastUpdateTime));
        final cards = response.registers
            .map(((e) =>
                CardEkzh.fromRegister(e, response.names, response.tariffs)))
            .toList();
        cardRepository.addNewCards(newCards: cards);
        await SecureStorageService()
            .saveLastupdateDateTime(response.lastUpdated);
      } catch (e) {
        print(e.toString());
      }
    });
  }

  void stopGettingregistr() {
    _timer.cancel();
  }

  Future savePendingRequest(PendingRequest request) async {
    await _box.put(request.id, request);
  }

  Future sendPendingRequests() async {
    var requests = _box.values.toList();
    for (var request in requests) {
      if (request != null) {
        await _httpService.sendPendingRequests(request);
      }
    }
  }

  Future flushPendingRequest(PendingRequest request) async {
    await _box.delete(request.id);
  }
}
