import 'package:flutter/material.dart';
import 'package:sea_sell/shared/theme.dart';
import 'package:sea_sell/ui/widgets/creator_card.dart';
import 'package:sea_sell/ui/widgets/floating_nav_bar.dart';
import 'package:sea_sell/ui/widgets/recent_bids_card.dart';
import 'package:sea_sell/ui/widgets/trending_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.fromLTRB(24, 40, 24, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "SeaSell",
                  style: blackTextStyle.copyWith(
                      fontWeight: semiBold, fontSize: 24),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "Find your NFT's Today",
                  style:
                      greyTextStyle.copyWith(fontWeight: light, fontSize: 16),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/image 15.png'))),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/image 14.png'))),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget nftCarousel() {
      return Container(
        margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: 30,
              ),
              TrendingCard(imageUrl: 'assets/image 4.png'),
              TrendingCard(imageUrl: 'assets/image 3-1.png'),
              TrendingCard(imageUrl: 'assets/image 5.png'),
            ],
          ),
        ),
      );
    }

    Widget popularCreators() {
      return Container(
        margin: EdgeInsets.only(
          top: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 24, right: 24),
              child: Text(
                'Popular Creators',
                style:
                    blackTextStyle.copyWith(fontSize: 16, fontWeight: medium),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 12,
                  ),
                  CreatorCard(
                    imageUrl: 'assets/image 6.png',
                    color: primaryColor,
                  ),
                  CreatorCard(
                    imageUrl: 'assets/image 11.png',
                    color: greenColor,
                  ),
                  CreatorCard(
                    imageUrl: 'assets/image 8.png',
                    color: yellowColor,
                  ),
                  CreatorCard(
                    imageUrl: 'assets/image 9.png',
                    color: Colors.red,
                  ),
                  CreatorCard(
                    imageUrl: 'assets/image 10.png',
                    color: Colors.blue,
                  ),
                  CreatorCard(
                    imageUrl: 'assets/image 8.png',
                    color: primaryColor,
                  ),
                  CreatorCard(
                    imageUrl: 'assets/image 9.png',
                    color: primaryColor,
                  ),
                  CreatorCard(
                    imageUrl: 'assets/image 11.png',
                    color: primaryColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget recentBids() {
      return Container(
        margin: EdgeInsets.fromLTRB(24, 30, 24, 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Recent Bids',
              style: blackTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            RecentBidsCard(
              name: 'Dart Celine',
              date: 'Apr 22',
              value: '28.40',
              imageUrl: 'assets/image 4.png',
            ),
            RecentBidsCard(
              name: 'Zipzip Koin',
              date: 'Feb 31',
              value: '1.10',
              imageUrl: 'assets/image 17.png',
            ),
            RecentBidsCard(
              name: 'Phones',
              date: 'Jan 10',
              value: '32.50',
              imageUrl: 'assets/image 18.png',
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [header(), nftCarousel(), popularCreators(), recentBids()],
        ),
      )),
      floatingActionButton: FloatingNavBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
