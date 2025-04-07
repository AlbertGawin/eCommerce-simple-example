import 'package:ageno_flutter_assesment_skills/data/product/repositories/product_repository_impl.dart';
import 'package:ageno_flutter_assesment_skills/data/product/sources/product_local_source.dart';
import 'package:ageno_flutter_assesment_skills/domain/product/get_products_usecase.dart';
import 'package:ageno_flutter_assesment_skills/domain/product/repositories/product_repository.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  await initProducts();
}

Future<void> initProducts() async {
  sl.registerSingleton<ProductRepository>(ProductRepositoryImpl());

  sl.registerSingleton<ProductLocalSource>(ProductLocalSourceImpl());

  sl.registerSingleton<GetProductsUsecase>(GetProductsUsecase());
}
