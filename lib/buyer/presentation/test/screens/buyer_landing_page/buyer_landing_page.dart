import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_pick_app/buyer/presentation/screens/home/home.dart';
import 'package:fresh_pick_app/buyer/presentation/screens/marketplace/marketplace.dart';
import 'package:fresh_pick_app/buyer/presentation/screens/orders/orders.dart';
import 'package:fresh_pick_app/buyer/presentation/screens/notifications/notifications.dart';
import 'package:fresh_pick_app/buyer/presentation/screens/settings/settings.dart';

import 'bloc/buyer_landing_page_bloc.dart';

List<BottomNavigationBarItem> _bottomNavBarItems =
    const <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: Icon(Icons.home_outlined),
    label: 'Home',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.grid_view_outlined),
    label: 'Marketplace',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.grading_outlined),
    label: 'Orders',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.notifications_none_outlined),
    label: 'Notifications',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.settings_outlined),
    label: 'Settings',
  ),
];

List<Widget> _pages = const <Widget>[
  BuyerHomePage(),
  BuyerMarketplacePage(),
  BuyerOrdersPage(),
  BuyerNotifiationsPage(),
  BuyerSettingsPage(),
];

class BuyerLandingPage extends StatelessWidget {
  const BuyerLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BuyerLandingPageBloc, BuyerLandingPageState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            items: _bottomNavBarItems,
            currentIndex: state.tabIndex,
            showSelectedLabels: false,
            unselectedItemColor: Colors.black,
            selectedItemColor: const Color.fromRGBO(3, 169, 244, 1),
            onTap: (index) {
              BlocProvider.of<BuyerLandingPageBloc>(context)
                  .add(TabChange(tabIndex: index));
            },
          ),
          body: Container(
            child: _pages.elementAt(state.tabIndex),
          ),
        );
      },
    );
  }
}
