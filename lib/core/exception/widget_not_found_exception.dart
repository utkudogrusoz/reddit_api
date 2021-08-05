class WidgetNotFoundException<T> implements Exception {
  @override
  String toString() {
    return 'This class doesnt have this state: ' + T.toString();
  }
}
