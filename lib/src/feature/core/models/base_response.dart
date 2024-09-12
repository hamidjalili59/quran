import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable()
class BaseResponse {
  BaseResponse({
    required this.data,
    required this.status,
    required this.code,
  });

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);
  final dynamic data;
  final String status;
  final int code;

  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);
}
