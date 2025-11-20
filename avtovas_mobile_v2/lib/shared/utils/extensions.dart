extension LetExtension<T> on T {
  R let<R>(R Function(T) callback) {
    return callback(this);
  }
}

extension AlsoExtension<T> on T {
  T also(void Function(T) callback) {
    callback(this);
    return this;
  }
}
