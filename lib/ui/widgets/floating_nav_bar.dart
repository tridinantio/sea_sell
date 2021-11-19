import 'package:flutter/material.dart';

class FloatingNavBar extends StatelessWidget {
  const FloatingNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      padding: EdgeInsets.symmetric(horizontal: 22),
      height: 56,
      width: double.infinity - (2 * 24),
      decoration: BoxDecoration(
          color: Color(
            0xff18093A,
          ),
          borderRadius: BorderRadius.circular(17)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('assets/profile.png'))),
            ),
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/news.png'))),
            ),
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/dashboard.png'))),
            ),
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/nft_collection (1) 1.png'))),
            ),
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/help.png'))),
            ),
          ],
        ),
      ),
    );
  }
}
