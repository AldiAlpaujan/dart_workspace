// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:product/src/persentation/pages/product_detail_page.dart' as _i1;
import 'package:product/src/persentation/pages/product_page.dart' as _i2;

/// generated route for
/// [_i1.ProductDetailPage]
class ProductDetail extends _i3.PageRouteInfo<void> {
  const ProductDetail({List<_i3.PageRouteInfo>? children})
      : super(
          ProductDetail.name,
          initialChildren: children,
        );

  static const String name = 'ProductDetail';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i1.ProductDetailPage();
    },
  );
}

/// generated route for
/// [_i2.ProductPage]
class Product extends _i3.PageRouteInfo<void> {
  const Product({List<_i3.PageRouteInfo>? children})
      : super(
          Product.name,
          initialChildren: children,
        );

  static const String name = 'Product';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.ProductPage();
    },
  );
}
