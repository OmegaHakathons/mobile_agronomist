import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';

class AuthResponse {
  final bool status;
  final List<dynamic> message;
  final AuthToken data;

  AuthResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  factory AuthResponse.fromJson(Map<String, dynamic> json) {
    return AuthResponse(
      status: json['status'] as bool,
      message: json['message'] as List<dynamic>,
      data: AuthToken.fromJson(json['data']),
    );
  }
}

class AuthToken {
  final String token;

  AuthToken({
    required this.token,
  });

  factory AuthToken.fromJson(Map<String,dynamic> json) {
    return AuthToken(
      token: json["token"] as String,
    );
  }
}

@HiveType(typeId: 0)
class PostsModel {
  @HiveField(0)
  final int? userId;
  @HiveField(1)
  final int? id;
  @HiveField(2)
  final String? title;
  @HiveField(3)
  final String? body;

  PostsModel({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userId': userId,
      'id': id,
      'title': title,
      'body': body,
    };
  }

  factory PostsModel.fromMap(Map<String, dynamic> map) {
    return PostsModel(
      userId: map['userId'] != null ? map['userId'] as int : null,
      id: map['id'] != null ? map['id'] as int : null,
      title: map['title'] != null ? map['title'] as String : null,
      body: map['body'] != null ? map['body'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory PostsModel.fromJson(String source) =>
      PostsModel.fromMap(json.decode(source) as Map<String, dynamic>);
}