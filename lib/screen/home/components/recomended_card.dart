import 'package:design/constants.dart';
import 'package:design/screens/details/details_screen.dart';
import 'package:flutter/material.dart';

class RecomendedCard extends StatelessWidget {
  const RecomendedCard({
    Key? key,
    required this.size,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.press,
  }) : super(key: key);

  final Size size;
  final String image, title, subtitle, price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.4,
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23),
                      offset: Offset(0, 10))
                ],
              ),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: title.toUpperCase(),
                        style: Theme.of(context).textTheme.button),
                    TextSpan(
                        text: subtitle.toLowerCase(),
                        style: TextStyle(color: kPrimaryColor.withOpacity(0.5)))
                  ])),
                  Spacer(),
                  Text(
                    price,
                    style: TextStyle(color: Colors.green, fontSize: 12),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
