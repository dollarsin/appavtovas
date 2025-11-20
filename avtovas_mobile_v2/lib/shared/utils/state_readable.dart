abstract class StateReadable<T> {
  T get state;

  Stream<T> get stateStream;
}
