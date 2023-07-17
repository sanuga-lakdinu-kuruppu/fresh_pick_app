import 'package:flutter/material.dart';
import 'package:fresh_pick_app/buyer/data/data_sources/local_sources/post_local_source.dart';
import 'package:fresh_pick_app/buyer/presentation/widgets/buyer_appbar/buyer_appbar.dart';
import 'package:fresh_pick_app/buyer/presentation/widgets/buyer_bottom_navbar/buyer_bottom_navbar.dart';
import 'package:fresh_pick_app/buyer/utils/colors.dart';
import 'package:fresh_pick_app/common/presentation/widgets/post_card_ver/post_card_ver.dart';

class BuyerMarketplacePage extends StatefulWidget {
  const BuyerMarketplacePage({Key? key}) : super(key: key);

  @override
  State<BuyerMarketplacePage> createState() => _MarketplaceState();
}

class _MarketplaceState extends State<BuyerMarketplacePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuyerAppbar(title: 'Marketplace'),
      bottomNavigationBar: const BuyerBottomNavbar(currentIndex: 1),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TextField(
              style: TextStyle(
                color: Colors.black,
              ),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                suffixIcon: Icon(
                  Icons.search_outlined,
                  color: Colors.black,
                ),
                hintText: 'Search...',
                hintStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Filter',
                  style: TextStyle(fontSize: 18),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.filter_list_rounded),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: PostListLocalSource().postList.length,
                itemBuilder: (context, index) {
                  return PostCardVer(
                    post: PostListLocalSource().postList[index],
                    statusBorderColor: buyerMainColor,
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
