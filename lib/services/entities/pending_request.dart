import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'pending_request.freezed.dart';
part 'pending_request.g.dart';

@Freezed()
class PendingRequest with _$PendingRequest {

  @HiveType(typeId: 200, adapterName: 'PendingRequestAdapter')
    const factory PendingRequest({
        @HiveField(0)
        required String url,
        @HiveField(1)
        required String body,
        @HiveField(2)
        required String headers,
        @HiveField(3)
        required String id,
    }) = _PendingRequest;

}