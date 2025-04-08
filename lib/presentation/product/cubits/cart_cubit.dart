import 'package:ageno_flutter_assesment_skills/core/errors/response_status.dart';
import 'package:ageno_flutter_assesment_skills/domain/product/entities/product.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(const CartState());

  void addToCart(ProductEntity product) {
    emit(state.copyWith(cartProducts: [...state.cartProducts, product]));
  }

  void removeFromCart(ProductEntity product) {
    emit(
      state.copyWith(
        cartProducts: state.cartProducts.where((p) => p != product).toList(),
      ),
    );
  }
}
