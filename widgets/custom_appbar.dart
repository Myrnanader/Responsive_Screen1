import 'package:flutter/material.dart';
import '../widgets/favorite_icon.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: CircleAvatar(
          backgroundColor: Colors.black,
          radius: 20,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              icon: const Icon(Icons.arrow_back),
              iconSize: 25,
              onPressed: () {},
            ),
          ),
        ),
      ),
      centerTitle: true,
      title: const Text("Details"),
      titleTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),

      actions: const [
        FavoriteIcon(),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
