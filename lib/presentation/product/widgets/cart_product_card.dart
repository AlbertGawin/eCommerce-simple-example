import 'package:ageno_flutter_assesment_skills/core/theme/app_colors.dart';
import 'package:ageno_flutter_assesment_skills/domain/product/entities/product.dart';
import 'package:ageno_flutter_assesment_skills/presentation/product/cubits/product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartProductCard extends StatelessWidget {
  final ProductEntity product;

  const CartProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Row(
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: Image.asset(product.imageUrl, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Cena: \$${product.price.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.agenoOrange,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          IconButton(
            icon: const Icon(Icons.remove_circle),
            onPressed: () {
              context.read<ProductCubit>().removeFromCart(product);
            },
          ),
        ],
      ),
    );
  }
}
