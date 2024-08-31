class ProductsModel {
  final String image;
  final List<String> images;
  final String title;
  final String description;
  final String? brand;
  final String? category;
  final String? availabilityStatus;
  final String? warrantyInformation;
  final double discountPercentage;
  final double price;
  final int? stock;
  final double rating;
  final List<String> tags;

  ProductsModel(
      {
      required this.image,
      required this.images,
      required this.title,
      required this.description,
      this.stock,
      this.brand,
      this.category,
      this.warrantyInformation,
      this.availabilityStatus,
      required this.discountPercentage,
      required this.price,
      required this.rating,
      required this.tags});

  factory ProductsModel.fromjson(Map<String, dynamic> json) {
    return ProductsModel(
      image: json['thumbnail'] ?? '',
      title: json['title'],
      description: json['description'],
      stock: (json['stock'] as num).toInt(),
      brand: json['brand'] ?? '',
      category: json['category'] ?? '',
      availabilityStatus: json['availabilityStatus']??'',
      warrantyInformation: json['warrantyInformation'],
      discountPercentage: (json['discountPercentage'] as num).toDouble(),
      price: (json['price'] as num).toDouble(),
      rating: (json['rating'] as num).toDouble(),
      tags: (json['tags'] as List<dynamic>?)?.map((tag) => tag.toString()).toList() ?? [],
      images: (json['images'] as List<dynamic>?)?.map((image)=>image.toString()).toList()??[],
    );
  }
}
