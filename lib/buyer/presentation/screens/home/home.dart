// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fresh_pick_app/buyer/presentation/components/buyer_appbar/buyer_appbar.dart';
import 'package:fresh_pick_app/buyer/presentation/components/buyer_bottom_navbar/buyer_bottom_navbar.dart';
import 'package:fresh_pick_app/buyer/presentation/components/buyer_post_card/buyer_post_card.dart';
import 'package:fresh_pick_app/buyer/presentation/components/complete_profile_card/complete_profile_card.dart';
import 'package:fresh_pick_app/buyer/utils/colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
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
        title: 'Home',
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
                  height: 160,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return BuyerPostCardComp(
                        postProductName:
                            'Red Tomato(special) test overflow values ',
                        postProductMinimumOrder: 60,
                        postProductUnit: 'kg',
                        postProductPricePerUnit: 70.0,
                        postProductImageURL:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRX1FIkOZcnf24lIFqUtu56prP8tKcQA39Zh4enVXuv8lRGHd8rCgS9UoKErYDWgLa1Yy8&usqp=CAU',
                        postProductStatus: 'Active',
                        postProductRating: 4,
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
