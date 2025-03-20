import 'package:flutter/material.dart';

class QuantitySelector extends StatefulWidget {
  const QuantitySelector({super.key});

  @override
  _QuantitySelectorState createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(width: 1),
      ),
      //padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
      margin: EdgeInsets.only(left: 0),
      height: 50,
      
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                if (quantity > 1) quantity--;
              });
            },
            icon: const Icon(Icons.remove),
          ),
          Text('$quantity', style: const TextStyle(fontSize: 20)),
          IconButton(
            onPressed: () {
              setState(() {
                quantity++;
              });
            },
            icon: const Icon(Icons.add),
          ),
          
        ],
      ),
    );
  }
}
