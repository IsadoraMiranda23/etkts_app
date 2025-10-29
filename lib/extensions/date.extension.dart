import "package:intl/intl.dart";

extension DateExtension on DateTime {
  String get toStringDiaMesAno {
    return DateFormat('dd/MM/yyyy').format(this);
  }
}