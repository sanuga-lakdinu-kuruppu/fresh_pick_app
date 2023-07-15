// create a widget BuyerBottomNavbar which extends BottomNavigationbar widget from flutter

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_pick_app/routes/app_route_constants.dart';
import 'package:go_router/go_router.dart';
import '../../../bloc/components/buyer_bottom_navbar/buyer_bottom_navbar_bloc.dart';

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
  const BuyerBottomNavbar({Key? key, required this.currentIndex})
      : super(key: key);

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BuyerBottomNavbarBloc(),
      child: BlocConsumer<BuyerBottomNavbarBloc, BuyerBottomNavbarState>(
        listenWhen: (previous, current) =>
            current is BuyerBottomNavbarActionState,
        buildWhen: (previous, current) =>
            current is! BuyerBottomNavbarActionState,
        listener: (context, state) {
          if (state.tabIndex == 0) {
            GoRouter.of(context).goNamed(FreshPickRouteConstants.buyerHome);
          } else if (state.tabIndex == 1) {
            GoRouter.of(context)
                .goNamed(FreshPickRouteConstants.buyerMarketplace);
          } else if (state.tabIndex == 2) {
            GoRouter.of(context).goNamed(FreshPickRouteConstants.buyerOrders);
          } else if (state.tabIndex == 3) {
            GoRouter.of(context)
                .goNamed(FreshPickRouteConstants.buyerNotifications);
          } else if (state.tabIndex == 4) {
            GoRouter.of(context).goNamed(FreshPickRouteConstants.buyerSettings);
          }
        },
        builder: (context, state) {
          return BottomNavigationBar(
            items: _bottomNavBarItems,
            currentIndex: currentIndex,
            showSelectedLabels: false,
            unselectedItemColor: Colors.black,
            selectedItemColor: const Color.fromRGBO(3, 169, 244, 1),
            onTap: (index) {
              BlocProvider.of<BuyerBottomNavbarBloc>(context)
                  .add(TabChange(tabIndex: index));
            },
          );
        },
      ),
    );
  }
}
