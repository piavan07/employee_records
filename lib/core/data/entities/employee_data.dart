import 'package:employee_management/core/constants/constants.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';
part 'employee_data.g.dart';

@HiveType(typeId: 0)
class EmployeeData extends HiveObject {
  @HiveField(0)
  String uuid = DateTime.now().microsecondsSinceEpoch.toString();

  @HiveField(1)
  String name;

  @HiveField(2)
  String role;

  @HiveField(3)
  DateTime fromDate;

  @HiveField(4)
  DateTime? toDate;

  EmployeeData(this.name, this.role, this.fromDate, this.toDate);

  get fromDateString {
    return DateFormat(Constants.dateFormat).format(fromDate);
  }

  get toDateString {
    if (toDate != null) {
      return DateFormat(Constants.dateFormat).format(toDate!);
    }
    return "";
  }

  get formattedTime {
    if (toDate != null) {
      return "$fromDateString - $toDateString";
    } else {
      return "From $fromDateString";
    }
  }
}
