import 'package:dio/dio.dart';

import 'cacnel_token_creator.dart';

class CancelTokenManager {
  CancelTokenManager({required CancelTokenCreator cancelTokenCreator})
    : _cancelTokenCreator = cancelTokenCreator;

  final CancelTokenCreator _cancelTokenCreator;
  final Map<String, CancelToken> _cancelTokens = {};

  CancelToken cancelToken(String path) {
    final cancelToken = _cancelTokenCreator.create();
    _cancelTokens[path] = cancelToken;
    return cancelToken;
  }

  void cancel(String path) {
    final cancelToken = _cancelTokens.remove(path);
    cancelToken?.cancel();
  }

  void cancelAll() {
    for (final cancelToken in _cancelTokens.values) {
      cancelToken.cancel();
    }
    _cancelTokens.clear();
  }
}
