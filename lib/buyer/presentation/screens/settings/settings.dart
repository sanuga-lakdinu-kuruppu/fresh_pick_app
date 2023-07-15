import 'package:flutter/material.dart';

import '../../components/buyer_appbar/buyer_appbar.dart';
import '../../components/buyer_bottom_navbar/buyer_bottom_navbar.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuyerAppbar(title: 'Settings'),
      bottomNavigationBar: const BuyerBottomNavbar(currentIndex: 4),
      body: const Center(
        child: Text('Settings'),
      ),
    );
  }
}
