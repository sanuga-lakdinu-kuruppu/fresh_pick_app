import 'package:flutter/material.dart';
import 'package:fresh_pick_app/utils/colors.dart';

// create a widget BuyerAppbar which extends AppBar widget from flutter

class BuyerAppbar extends AppBar {
  final PreferredSizeWidget? customBottom;
  final ShapeBorder? customShape;
  BuyerAppbar({
    super.key,
    required String title,
    this.customBottom,
    this.customShape,
  }) : super(
          bottom: customBottom,
          shape: customShape,
          backgroundColor: buyerMainColor,
          title: Text(title, style: const TextStyle(color: Colors.white)),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_active_outlined,
                color: Colors.white,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 5.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
              ),
            ),
          ],
        );
}
