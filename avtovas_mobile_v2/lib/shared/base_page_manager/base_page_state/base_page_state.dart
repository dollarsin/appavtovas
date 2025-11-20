import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_page_state.freezed.dart';

@Freezed(copyWith: true)
sealed class BasePageState<Data extends Object> with _$BasePageState<Data> {
  const BasePageState._();

  const factory BasePageState.initial({Data? data}) = BasePageInitialState;

  const factory BasePageState.loading({Data? data}) = BasePageLoadingState;

  const factory BasePageState.data({required Data data}) = BasePageDataState;

  const factory BasePageState.error({required Object error, Data? data}) =
      BasePageErrorState;

  bool get isInitial => this is BasePageInitialState<Data>;

  bool get isLoading => this is BasePageLoadingState<Data>;

  bool get isError => this is BasePageErrorState<Data>;

  bool get hasData => data != null;

  Data get requireData => data!;

  bool get isErrorWithData => isError && hasData;

  bool get isLoadingWithData => isLoading && hasData;
}
