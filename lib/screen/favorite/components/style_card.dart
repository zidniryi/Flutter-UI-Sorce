import 'package:design/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StyleCard extends StatelessWidget {
  final Image image;
  final String title;
  final String description;

  const StyleCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.8,
              ),
              child: Icon(Icons.favorite, color: Colors.red),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.width * 0.5,
              child: image,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              title.toUpperCase(),
              style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              description,
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
