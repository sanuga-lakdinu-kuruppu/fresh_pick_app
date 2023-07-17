// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fresh_pick_app/buyer/presentation/widgets/buyer_appbar/buyer_appbar.dart';
import 'package:fresh_pick_app/buyer/presentation/widgets/buyer_bottom_navbar/buyer_bottom_navbar.dart';
import 'package:fresh_pick_app/buyer/utils/colors.dart';
import 'package:fresh_pick_app/common/presentation/widgets/complete_profile_card/complete_profile_card.dart';
import 'package:fresh_pick_app/common/presentation/widgets/post_card_hor/post_card_hor.dart';
import '../../../data/data_sources/local_sources/post_local_source.dart';

class BuyerHomePage extends StatefulWidget {
  const BuyerHomePage({Key? key}) : super(key: key);

  @override
  State<BuyerHomePage> createState() => _BuyerHomePageState();
}

class _BuyerHomePageState extends State<BuyerHomePage> {
  @override
  Widget build(BuildContext context) {
    final postList = PostListLocalSource().postList;
    return Scaffold(
      appBar: BuyerAppbar(
        customAutomaticallyImplyLeading: false,
        customShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        customBottom: Tab(
          height: 150,
          child: Card(
            color: buyerMainColor,
            margin: EdgeInsets.only(top: 0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            child: Padding(
              padding:
                  EdgeInsets.only(top: 10, bottom: 20, right: 10, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Hi, Sanuga',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    'Member since July 2023',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      suffixIcon: Icon(
                        Icons.search_outlined,
                        color: Colors.black,
                      ),
                      hintText: 'Search...',
                      hintStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        title: 'Fresh Pick',
      ),
      bottomNavigationBar: BuyerBottomNavbar(currentIndex: 0),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 10, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                ),
                // complete profile card
                CompleteProfileMessageCard(),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                ),
                Text(
                  'Recent Search',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                Text(
                  'What have you previously searched on',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                ),
                SizedBox(
                  height: 180,
                  child: ListView.builder(
                    // shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return PostCardHor(
                        post: postList[index],
                        statusBorderColor: buyerMainColor,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
