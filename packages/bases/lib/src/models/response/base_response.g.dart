// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      limit: (json['limit'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt(),
      totalRows: (json['total_rows'] as num?)?.toInt(),
      totalPages: (json['total_pages'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'limit': instance.limit,
      'page': instance.page,
      'total_rows': instance.totalRows,
      'total_pages': instance.totalPages,
    };
