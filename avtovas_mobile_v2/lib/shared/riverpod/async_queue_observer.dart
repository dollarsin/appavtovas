import 'async_lifecycle.dart';

class AsyncQueueObserver implements AsyncLifecycle {
  AsyncQueueObserver({required List<Set<AsyncLifecycle>> initTasksQueue})
    : _initTasksQueue = initTasksQueue;

  final List<Set<AsyncLifecycle>> _initTasksQueue;

  @override
  Future<void> onInit() async {
    for (final initTasks in _initTasksQueue) {
      await Future.wait(initTasks.map((task) => task.onInit()));
    }
  }

  @override
  Future<void> onDispose() async {
    for (final initTasks in _initTasksQueue.reversed) {
      await Future.wait(initTasks.map((task) => task.onDispose()));
    }
  }
}
