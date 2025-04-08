import 'package:ageno_flutter_assesment_skills/core/errors/response_status.dart';
import 'package:ageno_flutter_assesment_skills/domain/product/entities/product.dart';
import 'package:ageno_flutter_assesment_skills/domain/product/get_products_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final GetProductsUsecase getProductsUsecase;

  ProductCubit({required this.getProductsUsecase})
    : super(const ProductState());

  void fetchProducts() async {
    emit(state.copyWith(status: ResponseStatus.inProgress));

    try {
      final result = await getProductsUsecase.call();

      result.fold(
        (failure) {
          emit(state.copyWith(status: ResponseStatus.failure));
        },
        (products) {
          emit(
            state.copyWith(products: products, status: ResponseStatus.success),
          );
        },
      );
    } catch (e) {
      emit(state.copyWith(status: ResponseStatus.failure));
    } finally {
      emit(state.copyWith(status: ResponseStatus.initial));
    }
  }
}
