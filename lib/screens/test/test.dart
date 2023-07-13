import 'package:flutter/material.dart';

class CustomListItemApp extends StatelessWidget {
  const CustomListItemApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CustomListItemExample(),
    );
  }
}

class _PostDescription extends StatelessWidget {
  const _PostDescription(
      {required this.postProductName,
      required this.postProductMinimumOrder,
      required this.postProductUnit,
      required this.postProductPricePerUnit,
      required this.postProductImageURL,
      required this.postProductStatus,
      required this.postProductRating});

  final String postProductName;
  final int postProductMinimumOrder;
  final String postProductUnit;
  final double postProductPricePerUnit;
  final String postProductImageURL;
  final String postProductStatus;
  final int postProductRating;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                postProductName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 2.0)),
              Text(
                postProductStatus,
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                "$postProductPricePerUnit / $postProductUnit",
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.black87,
                ),
              ),
              Text(
                'Minimum Order: $postProductMinimumOrder',
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.black54,
                ),
              ),
              Text(
                'Rating: $postProductRating',
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class BuyerPostCard extends StatelessWidget {
  const BuyerPostCard(
      {super.key,
      required this.postProductName,
      required this.postProductMinimumOrder,
      required this.postProductUnit,
      required this.postProductPricePerUnit,
      required this.postProductImageURL,
      required this.postProductStatus,
      required this.postProductRating});

  final String postProductName;
  final int postProductMinimumOrder;
  final String postProductUnit;
  final double postProductPricePerUnit;
  final String postProductImageURL;
  final String postProductStatus;
  final int postProductRating;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      semanticContainer: true,
      clipBehavior: Clip.hardEdge,
      child: Row(
        children: <Widget>[
          Image(
            image: NetworkImage(postProductImageURL),
            height: 150,
            width: 150,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 2.0, 0.0),
                  child: SizedBox(
                    width: 200,
                    child: _PostDescription(
                      postProductName: postProductName,
                      postProductMinimumOrder: postProductMinimumOrder,
                      postProductUnit: postProductUnit,
                      postProductPricePerUnit: postProductPricePerUnit,
                      postProductImageURL: postProductImageURL,
                      postProductStatus: postProductStatus,
                      postProductRating: postProductRating,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomListItemExample extends StatelessWidget {
  const CustomListItemExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom List Item Sample'),
      ),
      body: Container(
        color: Colors.teal,
        height: 158,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const <Widget>[
            BuyerPostCard(
              postProductName: 'Flutter 1.0 Launch',
              postProductMinimumOrder: 100,
              postProductUnit: 'kg',
              postProductPricePerUnit: 100,
              postProductImageURL: 'https://picsum.photos/250?image=9',
              postProductStatus: 'Available',
              postProductRating: 4,
            ),
            BuyerPostCard(
              postProductName:
                  'Flutter 1.2 Release - Continual updates to the framework',
              postProductMinimumOrder: 100,
              postProductUnit: 'kg',
              postProductPricePerUnit: 100,
              postProductImageURL: 'https://picsum.photos/250?image=10',
              postProductStatus: 'Available',
              postProductRating: 4,
            ),
          ],
        ),
      ),
    );
  }
}
