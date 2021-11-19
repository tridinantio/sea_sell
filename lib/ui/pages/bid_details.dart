import 'package:flutter/material.dart';
import 'package:sea_sell/shared/theme.dart';

class BidDetails extends StatelessWidget {
  const BidDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 80),
        child: Center(
          child: Column(
            children: [
              Text(
                'Warehouse',
                style:
                    blackTextStyle.copyWith(fontSize: 24, fontWeight: medium),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'Menggambarkan betapa pentingnya sebuah persediaan',
                style: greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      );
    }

    Widget nftCard() {
      return Center(
        child: Container(
          margin: EdgeInsets.only(top: 50),
          height: 340,
          width: 270,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                  image: AssetImage('assets/image 4.png'), fit: BoxFit.cover)),
        ),
      );
    }

    Widget setBidForm() {
      return Container(
        margin: EdgeInsets.only(top: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Set Bid',
              style: blackTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              width: double.infinity,
              height: 40,
              child: TextField(
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                  focusColor: primaryColor,
                  prefixIcon: Container(
                    padding: EdgeInsets.all(7),
                    width: 26,
                    height: 26,
                    child: Image.asset(
                      'assets/bitcoin 1.png',
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: 'Place Bid',
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget placeBidButton() {
      return Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
            color: yellowColor, borderRadius: BorderRadius.circular(25)),
        margin: EdgeInsets.only(top: 20),
        child: Center(
            child: Text(
          'Place Bid',
          style: blackTextStyle.copyWith(fontSize: 16, fontWeight: medium),
        )),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: 50),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [title(), nftCard(), setBidForm(), placeBidButton()],
          ),
        ),
      )),
    );
  }
}
