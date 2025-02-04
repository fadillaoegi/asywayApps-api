import 'package:intl/intl.dart';

class FormatAppsFLdev {
  static String dateFull(String value) {
    DateTime dateTime = DateTime.parse(value);
    return DateFormat("dd MMMM y", "id_ID").format(dateTime);
  }

  static String dateMonth(String value) {
    DateTime dateTime = DateTime.parse(value);
    return DateFormat("d MM", "id_ID").format(dateTime);
  }

  static String currency(String value) {
    return NumberFormat.currency(
            locale: "id_ID", decimalDigits: 2, symbol: "Rp.")
        .format(double.parse(value));
  }

  static String timer(String value) {
    DateTime dateTime = DateTime.parse(value);
    return DateFormat('HH:mm:ss').format(dateTime);
  }
}
