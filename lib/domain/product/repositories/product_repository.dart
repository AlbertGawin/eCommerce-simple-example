import 'package:ageno_flutter_assesment_skills/core/errors/failure.dart';
import 'package:ageno_flutter_assesment_skills/data/product/models/product.dart';
import 'package:dartz/dartz.dart';

abstract class ProductRepository {
  Future<Either<Failure, ProductModelList>> getProducts();
}
