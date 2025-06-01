// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductRes _$ProductResFromJson(Map<String, dynamic> json) => ProductRes()
  ..code = (json['code'] as num?)?.toInt()
  ..httpStatus = json['http_status'] as String?
  ..httpStatusCode = (json['http_status_code'] as num?)?.toInt()
  ..message = json['message'] as String?
  ..status = json['status'] as bool?
  ..data = (json['data'] as List<dynamic>?)
      ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
      .toList()
  ..meta = json['meta'] == null
      ? null
      : Meta.fromJson(json['meta'] as Map<String, dynamic>);

Map<String, dynamic> _$ProductResToJson(ProductRes instance) =>
    <String, dynamic>{
      'code': instance.code,
      'http_status': instance.httpStatus,
      'http_status_code': instance.httpStatusCode,
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
      'meta': instance.meta,
    };

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      image: json['image_link'] as String?,
      isHot: json['is_hot'] as bool,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image_link': instance.image,
      'is_hot': instance.isHot,
    };
