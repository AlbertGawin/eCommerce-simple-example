part of 'product_cubit.dart';

final class ProductState {
  final ProductsEntityList products;
  final ResponseStatus status;

  const ProductState({
    this.products = const [],
    this.status = ResponseStatus.initial,
  });

  ProductState copyWith({
    ProductsEntityList? products,
    ProductsEntityList? cartProducts,
    ResponseStatus? status,
  }) {
    return ProductState(
      products: products ?? this.products,
      status: status ?? this.status,
    );
  }
}
