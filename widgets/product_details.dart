import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  final String imagePath;
  const ProductImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Image.asset(imagePath, width: 400, height: 300);
  }
}

class ProductTitleRow extends StatelessWidget {
  final String name;
  final String price;

  const ProductTitleRow({super.key, required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(name, style: const TextStyle(fontSize: 30, color: Colors.grey)),
        Text(
          price,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class ProductDescription extends StatelessWidget {
  final String title;
  final String description;

  const ProductDescription({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(
          description,
          style: const TextStyle(fontSize: 18, color: Colors.black),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 20,),
      ],
    );
  }
}
