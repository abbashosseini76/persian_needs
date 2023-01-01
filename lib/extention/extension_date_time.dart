import '../persian_needs.dart';

extension PersianDateTimeMiladi on DateTime { 
  String tillNow({bool numeric = false}) => diffTimeFromNowMiladi(this, numeric: numeric);
}