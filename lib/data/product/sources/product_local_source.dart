import 'package:ageno_flutter_assesment_skills/core/errors/failure.dart';
import 'package:ageno_flutter_assesment_skills/data/product/models/product.dart';
import 'package:dartz/dartz.dart';

abstract class ProductLocalSource {
  Future<Either<Failure, ProductModelList>> getProducts();
}

class ProductLocalSourceImpl implements ProductLocalSource {
  @override
  Future<Either<Failure, List<ProductModel>>> getProducts() async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      return Right(_getMockProducts());
    } catch (e) {
      return Left(LocalDatasourceFailure());
    }
  }

  List<ProductModel> _getMockProducts() {
    return [
      const ProductModel(
        id: 1,
        name: 'Pepsi',
        price: 19.99,
        imageUrl: 'assets/images/product1.jpg',
      ),
      const ProductModel(
        id: 2,
        name: 'Szampon',
        price: 29.99,
        imageUrl: 'assets/images/product2.jpg',
      ),
      const ProductModel(
        id: 3,
        name: 'Słuchawki',
        price: 39.99,
        imageUrl: 'assets/images/product3.jpg',
      ),
      const ProductModel(
        id: 4,
        name: 'Pomarańcze',
        price: 49.99,
        imageUrl: 'assets/images/product4.jpg',
      ),
      const ProductModel(
        id: 5,
        name: 'Szminka',
        price: 59.99,
        imageUrl: 'assets/images/product5.jpg',
      ),
      const ProductModel(
        id: 6,
        name: 'Zegarek czarny',
        price: 69.99,
        imageUrl: 'assets/images/product6.jpg',
      ),
      const ProductModel(
        id: 7,
        name: 'Buty',
        price: 79.99,
        imageUrl: 'assets/images/product7.jpg',
      ),
      const ProductModel(
        id: 8,
        name: 'Okulary',
        price: 89.99,
        imageUrl: 'assets/images/product8.jpg',
      ),
      const ProductModel(
        id: 9,
        name: 'Perfumy',
        price: 99.99,
        imageUrl: 'assets/images/product9.jpg',
      ),
      const ProductModel(
        id: 10,
        name: 'Zegarek biały',
        price: 109.99,
        imageUrl: 'assets/images/product10.jpg',
      ),
    ];
  }
}
