import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        padding: const EdgeInsets.symmetric(vertical: 15),
      ),
      child: const Text(
        "Add to Cart",
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}
