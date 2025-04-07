typedef ProductsEntityList = List<ProductEntity>;

class ProductEntity {
  final int id;
  final String name;
  final double price;
  final String imageUrl;

  const ProductEntity({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
  });
}
