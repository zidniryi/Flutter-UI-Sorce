import 'package:design/screens/home/components/recomended_card.dart';
import 'package:flutter/material.dart';

class FullRecomended extends StatelessWidget {
  const FullRecomended({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendedCard(
            size: size,
            image: "assets/images/image_1.png",
            title: "Catfish\n",
            subtitle: "River",
            price: "USD 400",
            press: () {},
          ),
          RecomendedCard(
            size: size,
            image: "assets/images/image_2.png",
            title: "Tuna\n",
            subtitle: "Sea",
            price: "USD 420",
            press: () {},
          ),
          RecomendedCard(
            size: size,
            image: "assets/images/image_3.png",
            title: "Eel\n",
            subtitle: "River",
            price: "USD 440",
            press: () {},
          ),
        ],
      ),
    );
  }
}
