class ProductsModel {
  final String image;
  final List<String> images;
  final String title;
  final String description;
  final String? brand;
  final String category;
  final String returnPolicy;
  final String availabilityStatus;
  final String warrantyInformation;
  final String shippingInformation;
  final double discountPercentage;
  final double price;
  final int stock;
  final double rating;
  final List<String> tags;
  final List<ReviewModel> reviews;  // New field for reviews

  ProductsModel({
    required this.image,
    required this.images,
    required this.title,
    required this.description,
    required this.stock,
    this.brand,
    required this.category,
    required this.warrantyInformation,
    required this.shippingInformation,
    required this.returnPolicy,
    required this.availabilityStatus,
    required this.discountPercentage,
    required this.price,
    required this.rating,
    required this.tags,
    required this.reviews,  // Initialize in constructor
  });

  factory ProductsModel.fromjson(Map<String, dynamic> json) {
    return ProductsModel(
      image: json['thumbnail'] ?? '',
      title: json['title'],
      description: json['description'],
      stock: (json['stock'] as num).toInt(),
      brand: json['brand'] ?? '',
      category: json['category'] ?? '',
      availabilityStatus: json['availabilityStatus'] ?? '',
      returnPolicy: json['returnPolicy'],
      shippingInformation: json['shippingInformation'],
      warrantyInformation: json['warrantyInformation'],
      discountPercentage: (json['discountPercentage'] as num).toDouble(),
      price: (json['price'] as num).toDouble(),
      rating: (json['rating'] as num).toDouble(),
      tags: (json['tags'] as List<dynamic>?)
          ?.map((tag) => tag.toString())
          .toList() ?? [],
      images: (json['images'] as List<dynamic>?)
          ?.map((image) => image.toString())
          .toList() ?? [],
      reviews: (json['reviews'] as List<dynamic>?)
          ?.map((review) => ReviewModel.fromJson(review))
          .toList() ?? [],  // Parse reviews from JSON
    );
  }
}





class ReviewModel {
  final int rating;
  final String comment;
  final DateTime date;
  final String reviewerName;
  final String reviewerEmail;

  ReviewModel({
    required this.rating,
    required this.comment,
    required this.date,
    required this.reviewerName,
    required this.reviewerEmail,
  });

  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
      rating: (json['rating'] as num).toInt(),
      comment: json['comment'],
      date: DateTime.parse(json['date']),
      reviewerName: json['reviewerName'],
      reviewerEmail: json['reviewerEmail'],
    );
  }
}
