class BillingPaymentReceiptModel {
  final String orderID;
  final String date;
  final String itemRequested;
  final int quantity;
  final String seller;
  final String deliveryLocation;
  final String weighingUnit;
  final int totalWeight;
  final int totalDistance;
  final double itemAmount;
  final double deliveryFee;

  BillingPaymentReceiptModel({
    required this.orderID,
    required this.date,
    required this.itemRequested,
    required this.quantity,
    required this.seller,
    required this.deliveryLocation,
    required this.weighingUnit,
    required this.totalWeight,
    required this.totalDistance,
    required this.itemAmount,
    required this.deliveryFee,
  });
}
