// create a widget BuyerBottomNavbar which extends BottomNavigationbar widget from flutter

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_pick_app/screens/buyer/buyer_landing_page/bloc/buyer_landing_page_bloc.dart';

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

class BuyerBottomNavbar extends StatelessWidget {
  const BuyerBottomNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BuyerLandingPageBloc, BuyerLandingPageState>(
      builder: (context, state) {
        return BottomNavigationBar(
          items: _bottomNavBarItems,
          currentIndex: state.tabIndex,
          showSelectedLabels: false,
          unselectedItemColor: Colors.black,
          selectedItemColor: const Color.fromRGBO(3, 169, 244, 1),
          onTap: (index) {
            BlocProvider.of<BuyerLandingPageBloc>(context)
                .add(TabChange(tabIndex: index));
          },
        );
      },
    );
  }
}
