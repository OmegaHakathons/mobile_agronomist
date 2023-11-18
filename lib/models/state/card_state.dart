import 'package:flutter/material.dart';

import '../../services/entities/card_ekzh.dart';

@immutable
sealed class CardState {}

class CardInitial extends CardState {}

class CardLoading extends CardState {}

class CardLoaded extends CardState {
  CardLoaded({required this.response});

  final List<CardEkzh?> response;
}

class CardError extends CardState {
  CardError({required this.error});

  final String error;
}
