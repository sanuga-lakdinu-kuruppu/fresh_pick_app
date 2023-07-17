import 'package:flutter/material.dart';
import 'package:fresh_pick_app/buyer/presentation/widgets/buyer_appbar/buyer_appbar.dart';
import 'package:fresh_pick_app/buyer/presentation/widgets/buyer_bottom_navbar/buyer_bottom_navbar.dart';
import 'package:fresh_pick_app/buyer/utils/colors.dart';
import 'package:fresh_pick_app/common/presentation/widgets/order_card/order_card.dart';

class BuyerOrdersPage extends StatefulWidget {
  const BuyerOrdersPage({Key? key}) : super(key: key);

  @override
  State<BuyerOrdersPage> createState() => _BuyerOrdersPageState();
}

const int tabsCount = 5;

class _BuyerOrdersPageState extends State<BuyerOrdersPage> {
  List<String> titles = <String>[
    'Requested',
    'Accepted',
    'Ongoing',
    'Completed',
    'Cancelled'
  ];

  TabBar get _tabBar => TabBar(
        dividerColor: Colors.black54,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorColor: Colors.yellow,
        indicatorWeight: 3,
        unselectedLabelColor: const Color.fromARGB(255, 58, 54, 54),
        isScrollable: true,
        labelColor: buyerMainColor,
        labelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        tabs: List<Widget>.generate(
          tabsCount,
          (int index) {
            return Tab(text: titles[index]);
          },
        ),
      );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabsCount,
      initialIndex: 0,
      child: Scaffold(
        appBar: BuyerAppbar(
          title: 'Orders',
          customBottom: PreferredSize(
            preferredSize: _tabBar.preferredSize,
            child: Material(
              color: Colors.white, //<-- SEE HERE
              child: _tabBar,
            ),
          ),
        ),
        bottomNavigationBar: const BuyerBottomNavbar(currentIndex: 2),
        body: TabBarView(
          children: <Widget>[
            ListView.builder(
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) {
                return const OrderCard();
              },
            ),
            ListView.builder(
              itemCount: 25,
              itemBuilder: (BuildContext context, int index) {
                return const OrderCard();
              },
            ),
            ListView.builder(
              itemCount: 25,
              itemBuilder: (BuildContext context, int index) {
                return const OrderCard();
              },
            ),
            ListView.builder(
              itemCount: 25,
              itemBuilder: (BuildContext context, int index) {
                return const OrderCard();
              },
            ),
            ListView.builder(
              itemCount: 25,
              itemBuilder: (BuildContext context, int index) {
                return const OrderCard();
              },
            ),
          ],
        ),
      ),
    );
  }
}
