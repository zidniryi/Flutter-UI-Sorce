import 'package:design/constants.dart';
import 'package:flutter/material.dart';

class SectionBottomCard extends StatelessWidget {
  const SectionBottomCard({
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
          BottomCard(
            size: size,
            image: "assets/images/image_1.png",
            press: () {},
          ),
          BottomCard(
            size: size,
            image: "assets/images/image_2.png",
            press: () {},
          ),
          BottomCard(
            size: size,
            image: "assets/images/image_3.png",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class BottomCard extends StatelessWidget {
  const BottomCard(
      {Key? key, required this.size, required this.image, required this.press})
      : super(key: key);

  final Size size;
  final String image;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
      ),
    );
  }
}
