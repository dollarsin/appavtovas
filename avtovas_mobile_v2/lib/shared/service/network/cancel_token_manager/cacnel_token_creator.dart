import 'package:dio/dio.dart';

abstract class CancelTokenCreator {
  CancelToken create();
}

class CancelTokenCreatorImpl implements CancelTokenCreator {
  @override
  CancelToken create() {
    return CancelToken();
  }
}
