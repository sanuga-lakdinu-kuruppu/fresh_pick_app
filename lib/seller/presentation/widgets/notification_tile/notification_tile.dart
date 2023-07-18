import 'package:flutter/material.dart';

class NotificationTile extends StatelessWidget {
  const NotificationTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        alignment: Alignment.center,
        height: 135,
        width: 390,
        margin: const EdgeInsets.only(bottom: 10.0),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            boxShadow: [
              BoxShadow(
                  spreadRadius: 0,
                  offset: Offset(0, 4),
                  blurRadius: 2,
                  color: Colors.grey)
            ]),
        child: Column(
          children: [
            Container(
              height: 47,
              decoration: const BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              child: const Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Order - Requested',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '2 minutes ago',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 270,
                    child: Text(
                      'You have 150 kg Korean (Long) Radish order from ishara maduwantha perera . . .',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                  Icon(
                    Icons.message,
                    color: Colors.yellow,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
