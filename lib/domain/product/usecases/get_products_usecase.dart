import 'package:ageno_flutter_assesment_skills/core/errors/failure.dart';
import 'package:ageno_flutter_assesment_skills/core/usecase/usecase.dart';
import 'package:ageno_flutter_assesment_skills/data/product/models/product.dart';
import 'package:ageno_flutter_assesment_skills/domain/product/repositories/product_repository.dart';
import 'package:ageno_flutter_assesment_skills/service_locator.dart';
import 'package:dartz/dartz.dart';

class GetProductsUsecase
    implements UseCase<Either<Failure, ProductModelList>, void> {
  @override
  Future<Either<Failure, ProductModelList>> call({void params}) {
    return sl<ProductRepository>().getProducts();
  }
}
