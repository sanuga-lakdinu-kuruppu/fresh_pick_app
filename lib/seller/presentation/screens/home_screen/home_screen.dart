import 'package:flutter/material.dart';
import 'package:fresh_pick_app/seller/presentation/widgets/analytic_tile/requested_tile.dart';
import 'package:fresh_pick_app/seller/presentation/widgets/post_tile/post_tile_widget_horizontal.dart';
import '../../../../test_data/post_list.dart';
import '../../../data/models/post/post.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Align(
        child: SizedBox(
          child: Column(
            children: [
              Container(
                height: 246,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(105, 240, 174, 1),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 1,
                        offset: Offset(2, 2),
                        blurRadius: 10,
                        color: Colors.grey),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Hi Vihara',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold)),
                          Icon(Icons.line_style, color: Colors.white)
                        ],
                      ),
                      const SizedBox(height: 8),
                      const Row(
                        children: [
                          Text('Member Since 12 September 2020',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(double.maxFinite, 50),
                            backgroundColor: Colors.white,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Enter your desired item to search',
                                style: TextStyle(color: Colors.grey)),
                            Icon(Icons.search, color: Colors.grey)
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        children: [
                          Text(
                            'Top Rated Seller',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star, color: Colors.red),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 35),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Container(
                              width: 60,
                              height: 3,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Container(
                              width: 60,
                              height: 3,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Recent Posts',
                                style: TextStyle(
                                  color: Color.fromRGBO(151, 151, 151, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.post_add,
                                color: Color.fromRGBO(105, 240, 174, 1),
                              ),
                            ],
                          ),
                          Text(
                            'See All',
                            style: TextStyle(
                                color: Color.fromRGBO(105, 240, 174, 1),
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                      const Text(
                        'What have you previously posted in',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 200,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return PostTileWidgetHorizontal(
                              post: PostListData.postList
                                  .map((e) => PostDataModel(
                                      imageUrl: e['imageUrl'],
                                      id: e['id'],
                                      productName: e['productName'],
                                      productCategory: e['productCategory'],
                                      productSubCategory:
                                          e['productSubCategory'],
                                      minimumOrderQty: e['minimumOrderQty'],
                                      unit: e['unit'],
                                      minimumOrderPrice: e['minimumOrderPrice'],
                                      minimumOrderPricePer:
                                          e['minimumOrderPricePer'],
                                      productRating: e['productRating'],
                                      productStatus: e['productStatus'],
                                      countCompletedOrders:
                                          e['countCompletedOrders']))
                                  .toList()
                                  .first,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 16, right: 16),
                child: Expanded(
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Analytics',
                                  style: TextStyle(
                                    color: Color.fromRGBO(151, 151, 151, 1),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.analytics,
                                  color: Color.fromRGBO(105, 240, 174, 1),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Text(
                          'How is your business working',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 200,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return RequestedTile();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
