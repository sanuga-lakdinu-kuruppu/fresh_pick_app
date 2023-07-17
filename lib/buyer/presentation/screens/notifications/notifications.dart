import 'package:flutter/material.dart';
import 'package:fresh_pick_app/buyer/presentation/widgets/buyer_appbar/buyer_appbar.dart';
import 'package:fresh_pick_app/buyer/presentation/widgets/buyer_bottom_navbar/buyer_bottom_navbar.dart';
import 'package:fresh_pick_app/buyer/utils/colors.dart';
import 'package:fresh_pick_app/common/presentation/widgets/notification_card/notification_card.dart';

class BuyerNotifiationsPage extends StatefulWidget {
  const BuyerNotifiationsPage({Key? key}) : super(key: key);

  @override
  State<BuyerNotifiationsPage> createState() => _NotificationsState();
}

class _NotificationsState extends State<BuyerNotifiationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuyerAppbar(title: 'Notifiations'),
      bottomNavigationBar: const BuyerBottomNavbar(currentIndex: 3),
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.mail, color: Colors.grey),
                        SizedBox(width: 10),
                        Text(
                          'Inbox (24)',
                          style: TextStyle(
                              color: Color.fromRGBO(151, 151, 151, 1),
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Icon(Icons.list, color: Colors.grey)
                  ],
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 24,
                    itemBuilder: (context, index) {
                      return const NotificationCard(
                        barColor: buyerMainColor,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
