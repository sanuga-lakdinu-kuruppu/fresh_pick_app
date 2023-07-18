import 'package:flutter/material.dart';
import 'package:fresh_pick_app/seller/presentation/widgets/notification_tile/notification_tile.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      return const NotificationTile();
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
