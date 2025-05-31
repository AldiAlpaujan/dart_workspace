import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home/src/domain/models/response/product_res.dart';
import 'package:home/src/persentation/bloc/product_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        appBar: AppBar(title: Text("Home Page")),
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

class ProductItem extends StatelessWidget {
  final Product item;
  const ProductItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              item.image ?? '',
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name ?? '',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                SizedBox(height: 6),
                Text(
                  item.description ?? '',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
