import 'package:ageno_flutter_assesment_skills/core/errors/response_status.dart';
import 'package:ageno_flutter_assesment_skills/presentation/product/cubits/cart_cubit.dart';
import 'package:ageno_flutter_assesment_skills/presentation/product/cubits/product_cubit.dart';
import 'package:ageno_flutter_assesment_skills/presentation/product/widgets/cart_button.dart';
import 'package:ageno_flutter_assesment_skills/presentation/product/widgets/products_list.dart';
import 'package:ageno_flutter_assesment_skills/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CartCubit>(create: (_) => CartCubit()),
        BlocProvider<ProductCubit>(
          create:
              (_) => ProductCubit(getProductsUsecase: sl())..fetchProducts(),
        ),
      ],

      child: const ProductsView(),
    );
  }
}

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    final productState = context.watch<ProductCubit>().state;
    final cartState = context.watch<CartCubit>().state;

    return Scaffold(
      appBar: AppBar(
        actions: [CartButton(cartProducts: cartState.cartProducts)],
      ),
      body:
          productState.status.isInProgress
              ? Center(child: CircularProgressIndicator())
              : ProductsList(products: productState.products),
    );
  }
}
