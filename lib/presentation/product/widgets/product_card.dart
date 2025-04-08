import 'package:ageno_flutter_assesment_skills/core/theme/app_colors.dart';
import 'package:ageno_flutter_assesment_skills/domain/product/entities/product.dart';
import 'package:ageno_flutter_assesment_skills/presentation/product/cubits/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCard extends StatelessWidget {
  final ProductEntity product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final cartState = context.watch<CartCubit>().state;

    return Stack(
      children: [
        Card(
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                product.imageUrl,
                height: 100,
                width: double.infinity,
                fit: BoxFit.cover,
                filterQuality: FilterQuality.low,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                  right: 8,
                  top: 16,
                  bottom: 8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '\$${product.price.toStringAsFixed(2)}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 80,
          right: 10,
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color:
                  cartState.cartProducts.contains(product)
                      ? AppColors.agenoOrange
                      : AppColors.white,
              borderRadius: BorderRadius.circular(360),
              border: Border.all(color: AppColors.agenoOrange, width: 1),
            ),
            child: IconButton(
              icon:
                  cartState.cartProducts.contains(product)
                      ? const Icon(Icons.check)
                      : const Icon(Icons.add),
              color:
                  cartState.cartProducts.contains(product)
                      ? AppColors.white
                      : AppColors.agenoOrange,
              iconSize: 20,
              onPressed: () {
                if (cartState.cartProducts.contains(product)) {
                  context.read<CartCubit>().removeFromCart(product);
                } else {
                  context.read<CartCubit>().addToCart(product);
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}
