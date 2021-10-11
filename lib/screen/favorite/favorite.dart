import 'package:design/constants.dart';
import 'package:flutter/material.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';
import 'package:design/screens/favorite/components/style_card.dart';

class FavoriteScreen extends StatefulWidget {
  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  final List<Widget> styleCards = [
    StyleCard(
      image: Image.asset("assets/images/image_1.png"),
      title: "Catfish",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
    ),
    StyleCard(
      image: Image.asset("assets/images/image_2.png"),
      title: "Eeel ",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
    ),
    StyleCard(
      image: Image.asset("assets/images/image_3.png"),
      title: "Sea Stars",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
    ),
    StyleCard(
      image: Image.asset("assets/images/image_1.png"),
      title: "Tuna",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Favorites",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            )),
        backgroundColor: kPrimaryColor,
        shadowColor: kPrimaryColor.withOpacity(0.2),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: StackedCardCarousel(
        initialOffset: 40,
        spaceBetweenItems: 400,
        items: styleCards,
      ),
    );
  }
}
