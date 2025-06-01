import 'package:bases/bases.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_res.g.dart';

@JsonSerializable()
class ProductRes extends BaseResponse<List<Product>> {
  ProductRes() : super();

  factory ProductRes.fromJson(Map<String, dynamic> json) =>
      _$ProductResFromJson(json);

  Map<String, dynamic> toJson() => _$ProductResToJson(this);
}

@JsonSerializable()
class Product {
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'image_link')
  final String? image;
  @JsonKey(name: 'is_hot')
  final bool isHot;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.isHot,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
