import 'package:meta/meta.dart';

import '../cancel_token_manager/cancel_token_manager.dart';
import '../dio_client.dart';

typedef JsonData = Map<String, Object?>;

abstract mixin class BaseGetApi<T> {
  DioClient get dioClient;

  CancelTokenManager get cancelTokenManager;

  @protected
  String get getEndpoint;

  Future<T> get({
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
  }) async {
    final getEndpoint = this.getEndpoint;

    final response = await dioClient.get<JsonData>(
      getEndpoint,
      queryParameters: queryParameters,
      data: data,
      cancelToken: cancelTokenManager.cancelToken(getEndpoint),
    );

    return getResponseToModel(response.data!);
  }

  T getResponseToModel(JsonData response);

  void cancelGetRequest() {
    cancelTokenManager.cancel(getEndpoint);
  }
}

abstract mixin class BasePostApi<T> {
  DioClient get dioClient;

  CancelTokenManager get cancelTokenManager;

  @protected
  String get postEndpoint;

  Future<T> post({
    Map<String, Object?>? queryParameters,
    Map<String, Object?>? data,
  }) async {
    final postEndpoint = this.postEndpoint;
    final response = await dioClient.post<JsonData>(
      postEndpoint,
      queryParameters: queryParameters,
      data: data,
      cancelToken: cancelTokenManager.cancelToken(postEndpoint),
    );

    return postResponseToModel(response.data!);
  }

  T postResponseToModel(JsonData response);

  void cancelPostRequest() {
    cancelTokenManager.cancel(postEndpoint);
  }
}

abstract mixin class BasePutApi<T> {
  DioClient get dioClient;

  CancelTokenManager get cancelTokenManager;

  @protected
  String get putEndpoint;

  Future<T> put({
    Map<String, Object?>? queryParameters,
    Map<String, Object?>? data,
  }) async {
    final putEndpoint = this.putEndpoint;
    final response = await dioClient.put<JsonData>(
      putEndpoint,
      queryParameters: queryParameters,
      data: data,
      cancelToken: cancelTokenManager.cancelToken(putEndpoint),
    );

    return putResponseToModel(response.data!);
  }

  T putResponseToModel(JsonData response);

  void cancelPutRequest() {
    cancelTokenManager.cancel(putEndpoint);
  }
}

abstract mixin class BaseDeleteApi<T> {
  DioClient get dioClient;

  CancelTokenManager get cancelTokenManager;

  @protected
  String get deleteEndpoint;

  Future<T> delete({
    Map<String, Object?>? queryParameters,
    Map<String, Object?>? data,
  }) async {
    final deleteEndpoint = this.deleteEndpoint;
    final response = await dioClient.delete<JsonData>(
      deleteEndpoint,
      queryParameters: queryParameters,
      data: data,
      cancelToken: cancelTokenManager.cancelToken(deleteEndpoint),
    );

    return deleteResponseToModel(response.data!);
  }

  T deleteResponseToModel(JsonData response);

  void cancelDeleteRequest() {
    cancelTokenManager.cancel(deleteEndpoint);
  }
}
