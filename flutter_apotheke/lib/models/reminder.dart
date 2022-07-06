import 'package:hive/hive.dart';
part 'reminder.g.dart';

@HiveType(typeId: 0)
class Reminder extends HiveObject{
  @HiveField(0)
   String reminderText;

  @HiveField(1)
   String startingTime;

  @HiveField(2)
   String finishingTime;
}