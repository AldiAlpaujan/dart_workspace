import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

abstract class BaseResponse<T> {
  BaseResponse({
    this.code,
    this.message,
    this.status,
    this.httpStatus,
    this.httpStatusCode,
    this.data,
  });

  @JsonKey(name: 'code')
  int? code;
  @JsonKey(name: 'http_status')
  String? httpStatus;
  @JsonKey(name: 'http_status_code')
  int? httpStatusCode;
  @JsonKey(name: 'message')
  String? message;
  @JsonKey(name: 'status')
  bool? status;
  @JsonKey(name: 'data')
  T? data;
  @JsonKey(name: 'meta')
  Meta? meta;
}

@JsonSerializable()
class Meta {
  const Meta({this.limit, this.page, this.totalRows, this.totalPages});

  final int? limit;
  final int? page;
  @JsonKey(name: 'total_rows')
  final int? totalRows;
  @JsonKey(name: 'total_pages')
  final int? totalPages;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);
}
