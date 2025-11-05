extension ListExtension<E> on List<E> {
  void removeSingleWhere(bool Function(E) test) {
    final index = indexWhere(test);
    if (index != -1) {
      removeAt(index);
    }
  }
}