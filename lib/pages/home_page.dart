// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:CipherPay/data/json.dart';
import 'package:CipherPay/theme/colors.dart';
import 'package:CipherPay/widgets/avatar_image.dart';
import 'package:CipherPay/widgets/balance_card.dart';
import 'package:CipherPay/widgets/card_slider.dart';
import 'package:CipherPay/widgets/coin_card.dart';
import 'package:CipherPay/widgets/coin_item.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [appBgColorPrimary, appBgColorSecondary, appBgColorTernary],
        ),
      ),
      child: getBody(),
    ));
  }

  getBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(FirebaseAuth.instance.currentUser!.displayName!,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        )),
                  ],
                )),
                AvatarImage(
                  FirebaseAuth.instance.currentUser!.photoURL!,
                  isSVG: false,
                  width: 35,
                  height: 35,
                  radius: 10,
                )
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          // CardSlider(slides: slides),
          getBalanceCards(),
          SizedBox(
            height: 25,
          ),
          Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "Ideal for new investers",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              )),
          SizedBox(
            height: 15,
          ),
          getCoinCards(),
          SizedBox(
            height: 20,
          ),
          Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "Newly Launched",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              )),
          SizedBox(
            height: 15,
          ),
          getNewCoins(),
        ]),
      ),
    );
  }

  getBalanceCards() {
    return CardSlider(balanceCards: balanceCards);
    Center(child: BalanceCard(cardData: balanceCards[0]));
  }

  getCoinCards() {
    return SingleChildScrollView(
      padding: EdgeInsets.only(bottom: 5, left: 15),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
            coins.length, (index) => CoinCard(cardData: coins[index])),
      ),
    );
  }

  getNewCoins() {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Column(
          children:
              List.generate(coins.length, (index) => CoinItem(coins[index]))),
    );
  }
}



