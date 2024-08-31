import 'package:flutter/material.dart';
import 'package:snap_shop/features/home/presentation/widgets/availabilityStatusSection.dart';
import 'package:snap_shop/features/home/presentation/widgets/price_details_section.dart';
import 'package:snap_shop/features/home/presentation/widgets/product_data_widget.dart';

class DataSection extends StatelessWidget {
  const DataSection({
    super.key,
    required this.brand,
    required this.priceBeforeDiscount,
    required this.price,
    required this.discountPercentage,
    required this.warrantyInformation,
    required this.availabilityStatus,
    required this.stock,
  });

  final String brand;
  final String priceBeforeDiscount;
  final String price;
  final String discountPercentage;
  final String warrantyInformation;
  final String availabilityStatus;
  final int stock;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10,),
        brand == ''
            ? const SizedBox.shrink()
            : ProductDataWidget(name: 'Brand', productData: brand),
        const SizedBox(height: 20),
        PriceDetailsSection(
            priceBeforeDiscount: priceBeforeDiscount,
            price: price,
            discountPercentage: discountPercentage),
        const SizedBox(height: 20,),
        ProductDataWidget(productData: warrantyInformation),
        const SizedBox(height: 20,),
        AvailabilityStatusSection(availabilityStatus: availabilityStatus,stock: stock),
        const SizedBox(height: 10,),
      ],
    );
  }
}