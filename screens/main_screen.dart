import 'package:flutter/material.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/product_details.dart';
import '../widgets/color_options.dart';
import '../widgets/quantity_selector.dart';
import '../widgets/contained_favorite_icon.dart';
import '../widgets/add_to_cart_button.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProductImage(imagePath: "images/chair.webp"),
            const ProductTitleRow(name: "Chair", price: "\$212"),
            const ProductDescription(
              title: "Minimalist Style with pillow",
              description:
                  "Loren ipsum dolor sit amet, consectetur adipiscing elit, sed eiusnod tenpor incidunt ut labore et dolore magna aliqua.Ut enin ad ninin venian, quis nostrun exercitation ulloan corporis suscipit laboriosan, nisi ut aliquid ex ea connodi consequatur",
            ),

            //const Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [const ColorOptions(), const QuantitySelector()],
            ),

            const SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const ContainedFavoriteIcon(),
                //const SizedBox(width: 10),
                const Expanded(child: AddToCartButton()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
