import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/task/status_task.dart';

String getWordOrg(int num, String one, String two, String five) {
  num %= 100;
  if (num >= 5 && num <= 20) {
    return five;
  }
  num %= 10;
  if (num == 1) {
    return one;
  }
  if (num >= 2 && num <= 4) {
    return two;
  }
  return five;
}

DateTime getYearMonthDay(DateTime date) {
  return DateTime(date.year, date.month, date.day);
}

String getDateName(DateTime date) {
  final today = getYearMonthDay(DateTime.now());
  final differ = today.difference(date).inDays.abs();

  switch (differ) {
    case 0:
      return 'Сегодня';
    case 1:
      return 'Завтра';
    default:
      return DateFormat('dd MMMM', 'ru').format(date);
  }
}

Color getStatusColor(StatusTask status) {
  switch (status) {
    case StatusTask.neww:
      return Colors.grey;
    case StatusTask.finish:
      return Colors.lightGreen.shade400;
    case StatusTask.problem:
      return Colors.red.shade200;
    default:
      return Colors.yellow.shade200;
  }
}

String getTaskStatus(StatusTask status) {
  switch (status) {
    case StatusTask.neww:
      return 'Не начата';
    case StatusTask.finish:
      return 'Выполнена';
    case StatusTask.problem:
      return 'Проблема';
    default:
      return 'В работе';
  }
}
