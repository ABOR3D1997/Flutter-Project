import 'package:hive/hive.dart';
import 'package:flutter_apotheke/models/reminder.dart';

class Boxes{
  static Box<Reminder> getReminders() =>
      Hive.box<Reminder>('reminders');
}