import 'package:flutter/material.dart';
import 'package:sea_sell/shared/theme.dart';
import 'package:sea_sell/ui/pages/bid_details.dart';

class TrendingCard extends StatelessWidget {
  final String imageUrl;
  const TrendingCard({required this.imageUrl, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
      margin: EdgeInsets.only(right: 30),
      width: 270,
      height: 340,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          image:
              DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 100,
            height: 30,
            decoration: BoxDecoration(
                color: Color(0xff5A1FE4),
                borderRadius: BorderRadius.circular(9)),
            child: Center(
              child: Text(
                'Trending',
                style:
                    whiteTextStyle.copyWith(fontSize: 14, fontWeight: medium),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BidDetails()));
                },
                child: Container(
                  width: 176,
                  height: 40,
                  decoration: BoxDecoration(
                      color: yellowColor,
                      borderRadius: BorderRadius.circular(45)),
                  child: Center(
                    child: Text(
                      'Bid Now',
                      style: blackTextStyle.copyWith(
                          fontSize: 16, fontWeight: medium),
                    ),
                  ),
                ),
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/btn_wishlist.png'))),
              )
            ],
          )
        ],
      ),
    );
  }
}
