import 'package:flutter/material.dart';
import 'package:sea_sell/shared/theme.dart';

class CreatorCard extends StatelessWidget {
  final String imageUrl;
  final Color color;
  const CreatorCard({Key? key, required this.imageUrl, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      width: 55,
      height: 55,
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
          shape: BoxShape.circle, border: Border.all(color: color)),
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage(imageUrl), fit: BoxFit.cover)),
      ),
    );
  }
}
