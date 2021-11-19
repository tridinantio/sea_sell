import 'package:flutter/material.dart';
import 'package:sea_sell/shared/theme.dart';

class RecentBidsCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String date;
  final String value;
  const RecentBidsCard(
      {Key? key,
      required this.name,
      required this.imageUrl,
      required this.date,
      required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                          image: AssetImage(imageUrl), fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: blackTextStyle.copyWith(
                          fontSize: 14, fontWeight: medium),
                    ),
                    Text(
                      date,
                      style: greyTextStyle.copyWith(
                          fontSize: 12, fontWeight: regular),
                    )
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                        image: AssetImage('assets/bitcoin 1.png'),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                value,
                style:
                    blackTextStyle.copyWith(fontSize: 14, fontWeight: medium),
              )
            ],
          )
        ],
      ),
    );
  }
}
