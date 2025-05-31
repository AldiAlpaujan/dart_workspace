// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DefaultRes _$DefaultResFromJson(Map<String, dynamic> json) => DefaultRes()
  ..code = (json['code'] as num?)?.toInt()
  ..httpStatus = json['http_status'] as String?
  ..httpStatusCode = (json['http_status_code'] as num?)?.toInt()
  ..message = json['message'] as String?
  ..status = json['status'] as bool?
  ..data = json['data']
  ..meta = json['meta'] == null
      ? null
      : Meta.fromJson(json['meta'] as Map<String, dynamic>);

Map<String, dynamic> _$DefaultResToJson(DefaultRes instance) =>
    <String, dynamic>{
      'code': instance.code,
      'http_status': instance.httpStatus,
      'http_status_code': instance.httpStatusCode,
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
      'meta': instance.meta,
    };
