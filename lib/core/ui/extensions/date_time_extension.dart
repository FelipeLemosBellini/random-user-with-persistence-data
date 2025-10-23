extension DateTimeExtension on DateTime {
  String formatDate() {
    final dt = this;

    final d = dt.toUtc();
    String two(int v) => v.toString().padLeft(2, '0');

    final mm = two(d.month);
    final dd = two(d.day);
    final yyyy = d.year.toString().padLeft(4, '0');

    return '$mm/$dd/$yyyy';
  }
}
