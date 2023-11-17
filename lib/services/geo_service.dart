import 'dart:developer';

import 'package:geolocator/geolocator.dart';

class GeoService {
  Future<Position> getGeo() async {
    LocationPermission permission;

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        log('Location Permissions are denied');
        return Future.error('Location Permissions are denied');
      }
    }

    try {
      final position = await Geolocator.getCurrentPosition(
          timeLimit: const Duration(seconds: 5));
      return position;
    } catch (e) {
      throw '$e';
    }
  }
}
