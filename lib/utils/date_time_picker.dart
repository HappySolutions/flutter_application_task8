import 'package:flutter/material.dart';

Future<DateTime?> showDateTimePicker(BuildContext context,
    {required DateTime firstDate,
    required DateTime lastDate,
    DateTime? initialDate,
    required TimeOfDay initialTime}) async {
  DateTime? selectedDate;

  var selectDateResult = await showDatePicker(
      initialDate: initialDate,
      context: context,
      firstDate: firstDate,
      lastDate: lastDate);

  if (selectDateResult != null) {
    var selectTimeResult =
        await showTimePicker(context: context, initialTime: initialTime);

    if (selectTimeResult != null) {
      selectedDate = DateTime(
        selectDateResult.year,
        selectDateResult.month,
        selectDateResult.day,
        selectTimeResult.hour,
        selectTimeResult.minute,
      );
    }
  }

  return selectedDate;
}
