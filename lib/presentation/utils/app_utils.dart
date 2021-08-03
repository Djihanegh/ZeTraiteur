import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class AppUtils {
  static String dateToHourMinute(String date) {
    DateTime dateTime = DateTime.parse(date).toLocal();
    return DateFormat.Hm().format(dateTime);
  }

  static String dateToFormattedDate(String date, bool showYear) {
    DateTime dateTime = DateTime.parse(date);
    String formattedDate;
    showYear
        ? formattedDate = DateFormat.yMMMd().format(dateTime)
        : formattedDate = DateFormat.MMMd().format(dateTime);
    return formattedDate;
  }
}
