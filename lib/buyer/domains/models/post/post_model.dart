class PostModel {
  final String id;
  final String productName;
  final String productCategory;
  final String? productSubCategory;
  final double minimumOrderQty;
  final String unit;
  final double minimumOrderPrice;
  final double? minimumOrderPricePer;
  final double productRating;
  final String productStatus;
  final int? countCompletedOrders;
  final String imageUrl;

  PostModel({
    required this.id,
    required this.imageUrl,
    required this.productName,
    required this.productCategory,
    required this.minimumOrderQty,
    required this.unit,
    required this.minimumOrderPrice,
    required this.productRating,
    required this.productStatus,
    this.productSubCategory,
    this.minimumOrderPricePer,
    this.countCompletedOrders,
  });
}
