part of 'cart_cubit.dart';

final class CartState {
  final ProductsEntityList cartProducts;
  final ResponseStatus status;

  const CartState({
    this.cartProducts = const [],
    this.status = ResponseStatus.initial,
  });

  double get totalPrice {
    return cartProducts.fold(0, (total, product) => total + product.price);
  }

  CartState copyWith({
    ProductsEntityList? cartProducts,
    ResponseStatus? status,
  }) {
    return CartState(
      cartProducts: cartProducts ?? this.cartProducts,
      status: status ?? this.status,
    );
  }
}
