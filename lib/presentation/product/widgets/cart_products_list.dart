import 'package:ageno_flutter_assesment_skills/domain/product/entities/product.dart';
import 'package:ageno_flutter_assesment_skills/presentation/product/widgets/cart_product_card.dart';
import 'package:flutter/material.dart';

class CartProductsList extends StatelessWidget {
  final ProductsEntityList cartProducts;

  const CartProductsList({super.key, required this.cartProducts});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cartProducts.length,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      itemBuilder: (context, index) {
        final product = cartProducts[index];
        return CartProductCard(product: product);
      },
    );
  }
}
