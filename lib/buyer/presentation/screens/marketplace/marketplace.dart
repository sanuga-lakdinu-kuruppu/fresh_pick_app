import 'package:flutter/material.dart';
import 'package:fresh_pick_app/buyer/presentation/components/buyer_appbar/buyer_appbar.dart';
import 'package:fresh_pick_app/buyer/presentation/components/buyer_bottom_navbar/buyer_bottom_navbar.dart';

class Marketplace extends StatefulWidget {
  const Marketplace({Key? key}) : super(key: key);

  @override
  State<Marketplace> createState() => _MarketplaceState();
}

class _MarketplaceState extends State<Marketplace> {
  @override
  Widget build(BuildContext context) {
    // final int currentIndex;
    return Scaffold(
      appBar: BuyerAppbar(title: 'Marketplace'),
      bottomNavigationBar: const BuyerBottomNavbar(currentIndex: 1),
      body: const Center(
        child: Text('Marketplace'),
      ),
    );
  }
}
