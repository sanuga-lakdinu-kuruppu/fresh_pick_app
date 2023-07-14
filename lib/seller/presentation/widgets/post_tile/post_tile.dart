import 'package:flutter/material.dart';
import 'package:fresh_pick_app/seller/data/models/post/post.dart';

class PostTile extends StatelessWidget {
  final PostDataModel post;
  const PostTile({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
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
          )
        ],
      ),
      //color: Colors.white,
      height: 160,
      child: Row(
        children: [
          Container(
            height: 160,
            width: 140,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  topLeft: Radius.circular(15)),
              image: DecorationImage(
                image: NetworkImage(post.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Product Name',
                      ),
                      Text(post.productName,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Minimum Order',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        '${post.minimumOrderQty} ${post.unit}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 31,
                      ),
                      const Text(
                        'Price',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 70,
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            border: Border.all(
                                color: Colors.greenAccent, width: 2)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 10,
                              width: 10,
                              decoration: const BoxDecoration(
                                color: Colors.yellow,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Active',
                              style: TextStyle(
                                  fontSize: 10, color: Colors.greenAccent),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 39,
                      ),
                      const Text(
                        'Completed',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        '${post.countCompletedOrders}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        '${post.minimumOrderPricePer} ${post.unit}',
                        style: const TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 12),
                      ),
                      Text(
                        'Rs. ${post.minimumOrderPrice}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
