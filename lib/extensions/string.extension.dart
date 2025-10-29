extension StringExtension on String {
  String get formatDateString {
    return '${substring(8)}/${substring(5, 7)}/${substring(0, 4)}';
  }

  String get formatTimeString {
    return '${substring(0, 2)}:${substring(3, 5)}';
  }
}