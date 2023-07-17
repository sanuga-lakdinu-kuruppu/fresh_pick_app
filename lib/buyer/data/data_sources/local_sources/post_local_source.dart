import 'package:fresh_pick_app/buyer/domains/models/post/post_model.dart';

class PostListLocalSource {
  final List<PostModel> postList = [
    PostModel(
      id: '001',
      productName: 'Carrot',
      // get images from buyer assets folder
      imageUrl: 'assets/images/tomato12.png',
      minimumOrderPrice: 100,
      minimumOrderQty: 25,
      unit: 'kg',
      productCategory: 'Vegetables',
      productRating: 4.5,
      productStatus: 'Active',
    ),
    PostModel(
      id: '002',
      productName: 'Radish',
      imageUrl: 'assets/images/tomato1.jpeg',
      minimumOrderPrice: 70,
      minimumOrderQty: 35,
      unit: 'kg',
      productCategory: 'Vegetables',
      productRating: 4.0,
      productStatus: 'Active',
    ),
    PostModel(
      id: '003',
      productName: 'Leeks',
      imageUrl: 'assets/images/leeks1.jpeg',
      minimumOrderPrice: 50,
      minimumOrderQty: 57,
      unit: 'kg',
      productCategory: 'Vegetables',
      productRating: 4.0,
      productStatus: 'Active',
    ),
    PostModel(
      id: '004',
      productName: 'Potato',
      imageUrl: 'assets/images/radish1.jpeg',
      minimumOrderPrice: 80,
      minimumOrderQty: 35,
      unit: 'kg',
      productCategory: 'Vegetables',
      productRating: 4.0,
      productStatus: 'Active',
    ),
    PostModel(
      id: '005',
      productName: 'Tomato',
      imageUrl: 'assets/images/radish1.jpeg',
      minimumOrderPrice: 90.00,
      minimumOrderQty: 35,
      unit: 'kg',
      productCategory: 'Vegetables',
      productRating: 4.0,
      productStatus: 'Active',
    ),
  ];
}
