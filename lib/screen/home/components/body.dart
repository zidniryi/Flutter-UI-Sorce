import 'package:design/constants.dart';
import 'package:design/screens/details/details_screen.dart';
import 'package:design/screens/favorite/favorite.dart';
import 'package:design/screens/home/components/full_recomended.dart';
import 'package:design/screens/home/components/header_with_seachbox.dart';
import 'package:design/screens/home/components/recomended_card.dart';
import 'package:design/screens/home/components/section_bottom.dart';
import 'package:design/screens/home/components/title_with_button.dart';
import 'package:design/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate entre screen
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        HeaderWithSearchBox(size: size),
        TitleWithMoreButton(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            title: "Popular"),
        FullRecomended(size: size),
        TitleWithMoreButton(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FavoriteScreen(),
                ),
              );
            },
            title: "Recomended"),
        SectionBottomCard(size: size),
        SizedBox(
          height: kDefaultPadding,
        )
      ]),
    );
  }
}
