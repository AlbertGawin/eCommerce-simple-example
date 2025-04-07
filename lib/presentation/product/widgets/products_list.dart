import 'package:ageno_flutter_assesment_skills/domain/product/entities/product.dart';
import 'package:ageno_flutter_assesment_skills/presentation/product/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProductsList extends StatelessWidget {
  final ProductsEntityList products;

  const ProductsList({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      itemCount: products.length,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      itemBuilder: (context, index) {
        return ProductCard(product: products[index]);
      },
    );
  }
}
