import 'package:airplane/shared/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  Widget bonusCard() {
    return Container(
      width: 330,
      height: 211,
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/image_card.png')),
        boxShadow: [
          BoxShadow(
            color: kPrimaryColor.withOpacity(0.5),
            blurRadius: 50,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: whiteTextStyle.copyWith(fontWeight: light),
                    ),
                    Text(
                      'Jhon Wick',
                      style: whiteTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 20,
                      ),
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
              Container(
                width: 24,
                height: 24,
                margin: EdgeInsets.only(right: 6),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/icon_plan.png'))),
              ),
              Text(
                'Pay',
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              )
            ],
          ),
          SizedBox(
            height: 41,
          ),
          Text(
            'Balance',
            style: whiteTextStyle.copyWith(fontSize: 14, fontWeight: light),
          ),
          Text(
            'IDR 28.000.000',
            style: whiteTextStyle.copyWith(
              fontSize: 26,
              fontWeight: medium,
            ),
          ),
        ],
      ),
    );
  }

  Widget title() {
    return Container(
      margin: EdgeInsets.only(top: 80),
      child: Text(
        'Big Bonus',
        style: blackTextStyle.copyWith(
          fontSize: 32,
          fontWeight: semiBold,
        ),
      ),
    );
  }

  Widget subtitle() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Text(
        'We give you early credit so that \nyou can buy a flight ticket',
        style: greyTextStyle.copyWith(
          fontSize: 16,
          fontWeight: light,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget startButton() {
    return Container(
      margin: EdgeInsets.only(top: 50),
      width: 200,
      height: 50,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        ),
        child: Text(
          'Start Fly Now',
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [bonusCard(), title(), subtitle(), startButton()],
        ),
      ),
    );
  }
}
