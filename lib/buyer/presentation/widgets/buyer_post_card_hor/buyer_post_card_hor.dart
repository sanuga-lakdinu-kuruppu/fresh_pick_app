import 'package:flutter/material.dart';
import '../../../domains/models/post/post_model.dart';

class BuyerPostCardHor extends StatelessWidget {
  final PostModel post;
  const BuyerPostCardHor({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        height: 160,
        width: 380,
        margin: const EdgeInsets.only(right: 5.0),
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
              color: Colors.grey,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(3),
              height: 160,
              width: 160,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    topLeft: Radius.circular(15)),
              ),
              child: Image(
                // isAntiAlias: true,
                image: Image.asset(post.imageUrl).image,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 5, right: 5, top: 3, bottom: 3),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 200,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Product Name'),
                            SizedBox(
                              width: 100,
                              child: Text(post.productName,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                            ),
                          ],
                        ),
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: 60,
                              padding: const EdgeInsets.all(2.0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  border: Border.all(
                                      color: Colors.greenAccent, width: 2)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 6,
                                    width: 6,
                                    decoration: const BoxDecoration(
                                      color: Colors.yellow,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text(
                                    'Active',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.greenAccent),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Minimum Order',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            '${post.minimumOrderQty} ${post.unit}',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            'Completed',
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            '${post.countCompletedOrders}',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 200,
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Price : ',
                          style: TextStyle(fontSize: 12),
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'Rs. ${post.minimumOrderPrice}0 / ',
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: post.unit,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
