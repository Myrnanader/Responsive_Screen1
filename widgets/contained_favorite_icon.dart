import 'package:flutter/material.dart';
import '../widgets/favorite_icon.dart';

class ContainedFavoriteIcon extends StatefulWidget {
  const ContainedFavoriteIcon({super.key});

  @override
  _ContainedFavoriteIconState createState() => _ContainedFavoriteIconState();
}

class _ContainedFavoriteIconState extends State<ContainedFavoriteIcon> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            border: Border.all(),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 201, 201, 201),
                spreadRadius: 2,
                blurRadius: 5,
              ),
            ],
          ),
          child: FavoriteIcon(),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
