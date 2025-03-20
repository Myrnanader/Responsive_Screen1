import 'package:flutter/material.dart';

class ColorOptions extends StatelessWidget {
  const ColorOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _buildColorCircle(const Color.fromARGB(255, 135, 20, 20)),
        _buildColorCircle(Colors.black),
        _buildColorCircle(const Color.fromARGB(255, 248, 176, 68)),
        _buildColorCircle(Colors.blueGrey),
      ],
    );
  }

  Widget _buildColorCircle(Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: CircleAvatar(radius: 20, backgroundColor: color),
    );
  }
}
