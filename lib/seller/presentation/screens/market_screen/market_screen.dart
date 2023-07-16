import 'package:flutter/material.dart';
import 'package:fresh_pick_app/seller/data/models/post/post.dart';
import 'package:fresh_pick_app/seller/presentation/screens/new_post_screen/new_post.dart';
import 'package:fresh_pick_app/seller/presentation/widgets/post_tile/post_tile_widget.dart';
import 'package:fresh_pick_app/test_data/post_list.dart';

class MarketScreen extends StatelessWidget {
  const MarketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: 60,
              width: double.maxFinite,
              padding: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(
                  width: 2,
                  color: const Color.fromRGBO(105, 240, 174, 1),
                ),
                boxShadow: const [
                  BoxShadow(
                    spreadRadius: 0,
                    offset: Offset(0, 0.75),
                    blurRadius: 8,
                    color: Colors.black54,
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New Post',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NewPost()));
                    },
                    icon: const Icon(
                      Icons.add,
                      color: Color.fromRGBO(105, 240, 174, 1),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your Posts',
                  style: TextStyle(
                    color: Color.fromRGBO(151, 151, 151, 1),
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Icon(
                  Icons.list,
                  color: Color.fromRGBO(151, 151, 151, 1),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(160, 42),
                    backgroundColor: const Color.fromRGBO(105, 240, 174, 1),
                    elevation: 0,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Active (08)',
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(160, 42),
                    backgroundColor: const Color.fromRGBO(105, 240, 174, 1),
                    elevation: 0,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Finished (12)',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return PostTileWidget(
                    post: PostListData.postList
                        .map((e) => PostDataModel(
                            imageUrl: e['imageUrl'],
                            id: e['id'],
                            productName: e['productName'],
                            productCategory: e['productCategory'],
                            productSubCategory: e['productSubCategory'],
                            minimumOrderQty: e['minimumOrderQty'],
                            unit: e['unit'],
                            minimumOrderPrice: e['minimumOrderPrice'],
                            minimumOrderPricePer: e['minimumOrderPricePer'],
                            productRating: e['productRating'],
                            productStatus: e['productStatus'],
                            countCompletedOrders: e['countCompletedOrders']))
                        .toList()
                        .first,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
