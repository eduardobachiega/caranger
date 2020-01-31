import 'package:flutter/material.dart';

class DashItem extends StatelessWidget {
  final String imageName;
  final String title;
  final String subtitle;

  const DashItem(
      {Key key, this.imageName, this.title, this.subtitle}
      ) : super();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image(
          image: AssetImage(imageName),
          height: 50,
          width: 50,
        ),
        Container(
          width: 25,
          color: Colors.transparent,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(title,
                style: TextStyle(
                    fontSize: 25, fontWeight: FontWeight.bold)),
            Text(subtitle)
          ],
        ),
      ],
    );
  }
}
