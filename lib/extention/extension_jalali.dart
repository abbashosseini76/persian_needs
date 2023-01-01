import 'package:shamsi_date/shamsi_date.dart';

import '../module/time.dart';

extension PersianDateTimeJalali on Jalali {
    String tillNow({bool numeric = false}) => diffTimeFromNowShamsi(this, numeric: numeric);
}
