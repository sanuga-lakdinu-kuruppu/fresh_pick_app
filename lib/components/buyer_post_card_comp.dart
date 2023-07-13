import 'package:flutter/material.dart';

class BuyerPostCardComp extends StatelessWidget {
  final String postProductName;
  final int postProductMinimumOrder;
  final String postProductUnit;
  final double postProductPricePerUnit;
  final String postProductImageURL;
  final String postProductStatus;
  final int postProductRating;
  const BuyerPostCardComp(
      {super.key,
      required this.postProductName,
      required this.postProductMinimumOrder,
      required this.postProductUnit,
      required this.postProductPricePerUnit,
      required this.postProductImageURL,
      required this.postProductStatus,
      required this.postProductRating});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      // semanticContainer: true,
      clipBehavior: Clip.antiAlias,
      child: Row(
        children: <Widget>[
          Image(
            fit: BoxFit.cover,
            image: NetworkImage(postProductImageURL),
            height: 185,
            width: 185,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 2.0, 0.0),
                  child: SizedBox(
                    width: 175,
                    height: 158,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                postProductName,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueGrey),
                              ),
                              const Padding(
                                  padding: EdgeInsets.only(bottom: 2.0)),
                              RichText(
                                text: TextSpan(
                                  text: "Price : ",
                                  style: const TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14.0,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text:
                                          "Rs. $postProductPricePerUnit / $postProductUnit",
                                      style: const TextStyle(
                                          color: Colors.black87,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                  padding: EdgeInsets.only(bottom: 2.0)),
                              RichText(
                                text: TextSpan(
                                  text: "Minimum Order : ",
                                  style: const TextStyle(
                                    color: Colors.black54,
                                    fontSize: 12.0,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text:
                                          "$postProductMinimumOrder $postProductUnit",
                                      style: const TextStyle(
                                          color: Colors.black87,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                  padding: EdgeInsets.only(bottom: 2.0)),
                              RichText(
                                text: TextSpan(
                                  text: "Ratings : ",
                                  style: const TextStyle(
                                    color: Colors.black54,
                                    fontSize: 12.0,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "$postProductRating / 5",
                                      style: const TextStyle(
                                          color: Colors.black87,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const WidgetSpan(
                                      child: Icon(
                                        Icons.star,
                                        size: 14,
                                        color: Colors.amber,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 6.0),
                              ),
                              // Status shown like a badge
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Text(
                                  postProductStatus,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
