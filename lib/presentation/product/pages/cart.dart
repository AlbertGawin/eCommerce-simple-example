import 'package:ageno_flutter_assesment_skills/presentation/product/cubits/product_cubit.dart';
import 'package:ageno_flutter_assesment_skills/presentation/product/widgets/cart_bottom_info.dart';
import 'package:ageno_flutter_assesment_skills/presentation/product/widgets/cart_products_list.dart';
import 'package:ageno_flutter_assesment_skills/presentation/product/widgets/empty_cart_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ProductCubit>().state;

    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar:
          state.cartProducts.isEmpty
              ? null
              : CartBottomInfo(totalPrice: state.totalPrice),
      body:
          state.cartProducts.isEmpty
              ? EmptyCartInfo()
              : CartProductsList(cartProducts: state.cartProducts),
    );
  }
}
