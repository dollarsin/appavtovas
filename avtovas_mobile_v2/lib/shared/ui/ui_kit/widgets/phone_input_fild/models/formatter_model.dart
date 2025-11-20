import 'package:freezed_annotation/freezed_annotation.dart';

part 'formatter_model.freezed.dart';

part 'formatter_model.g.dart';

@Freezed(fromJson: true, toJson: true, copyWith: false)
abstract class FormatterModel with _$FormatterModel {
  const factory FormatterModel({
    @JsonKey(name: 'mask') required String mask,
    @JsonKey(name: 'filters') @Default({}) Map<String, String> filters,
  }) = _FormatterModel;

  factory FormatterModel.fromJson(Map<String, dynamic> json) =>
      _$FormatterModelFromJson(json);
}
