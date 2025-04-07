import 'package:ageno_flutter_assesment_skills/core/errors/failure.dart';
import 'package:ageno_flutter_assesment_skills/data/product/models/product.dart';
import 'package:ageno_flutter_assesment_skills/data/product/sources/product_local_source.dart';
import 'package:ageno_flutter_assesment_skills/domain/product/repositories/product_repository.dart';
import 'package:ageno_flutter_assesment_skills/service_locator.dart';
import 'package:dartz/dartz.dart';

class ProductRepositoryImpl implements ProductRepository {
  @override
  Future<Either<Failure, ProductModelList>> getProducts() {
    return sl<ProductLocalSource>().getProducts();
  }
}
