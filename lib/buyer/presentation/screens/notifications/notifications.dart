import 'package:flutter/material.dart';
import 'package:fresh_pick_app/buyer/presentation/components/buyer_appbar/buyer_appbar.dart';
import 'package:fresh_pick_app/buyer/presentation/components/buyer_bottom_navbar/buyer_bottom_navbar.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuyerAppbar(title: 'Notifications'),
      bottomNavigationBar: const BuyerBottomNavbar(currentIndex: 3),
      body: const Center(
        child: Text('Notifications'),
      ),
    );
  }
}
