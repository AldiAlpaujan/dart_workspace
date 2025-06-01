import 'package:auto_route/auto_route.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/src/persentation/widgets/product_item.dart';
import '/src/persentation/bloc/product_bloc.dart';

@RoutePage()
class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final productBloc = ProductBloc(di());

  @override
  void initState() {
    super.initState();
    productBloc.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => productBloc,
      child: Scaffold(
        appBar: AppBar(title: Text("Product Page")),
        body: BlocBuilder<ProductBloc, ProductState>(
          builder: (_, productSt) {
            if (productSt is! ProductLoaded) {
              return Align(
                alignment: Alignment.center,
                child: CircularProgressIndicator(),
              );
            }
            return RefreshIndicator(
              onRefresh: () async => productBloc.fetch(),
              child: ListView(
                padding: EdgeInsets.all(16),
                children: [
                  ...productSt.res.map(
                    (e) => Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: ProductItem(item: e),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
