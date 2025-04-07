part of 'product_cubit.dart';

final class ProductState {
  final ProductsEntityList products;
  final ProductsEntityList cartProducts;
  final ResponseStatus status;

  const ProductState({
    this.products = const [],
    this.cartProducts = const [],
    this.status = ResponseStatus.initial,
  });

  double get totalPrice {
    return cartProducts.fold(0, (total, product) => total + product.price);
  }

  ProductState copyWith({
    ProductsEntityList? products,
    ProductsEntityList? cartProducts,
    ResponseStatus? status,
  }) {
    return ProductState(
      products: products ?? this.products,
      cartProducts: cartProducts ?? this.cartProducts,
      status: status ?? this.status,
    );
  }
}
