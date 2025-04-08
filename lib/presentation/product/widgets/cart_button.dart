import 'package:ageno_flutter_assesment_skills/core/theme/app_colors.dart';
import 'package:ageno_flutter_assesment_skills/domain/product/entities/product.dart';
import 'package:ageno_flutter_assesment_skills/presentation/product/cubits/cart_cubit.dart';
import 'package:ageno_flutter_assesment_skills/presentation/product/cubits/product_cubit.dart';
import 'package:ageno_flutter_assesment_skills/presentation/product/pages/cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartButton extends StatelessWidget {
  final ProductsEntityList cartProducts;

  const CartButton({super.key, required this.cartProducts});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final cartCubit = context.read<CartCubit>();

        Navigator.push(
          context,
          MaterialPageRoute(
            builder:
                (context) => BlocProvider.value(
                  value: cartCubit,
                  child: const CartPage(),
                ),
          ),
        );
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.shopping_cart, size: 30, color: AppColors.black),
          ),
          if (cartProducts.isNotEmpty)
            Positioned(
              right: 8,
              top: 8,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: AppColors.agenoOrange,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  '${cartProducts.length}',
                  style: const TextStyle(
                    color: AppColors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
