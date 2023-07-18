import 'package:fresh_pick_app/common/domain/models/billing_payment_receipt_model.dart';

class BillingPaymentReceiptLocalSourceData {
  final List<BillingPaymentReceiptModel> billingPayementReceiptList = [
    BillingPaymentReceiptModel(
      orderID: '001',
      date: '2-3-2023',
      itemRequested: 'Radish',
      quantity: 115,
      seller: 'amal_7846',
      deliveryLocation: 'Delivery Location',
      weighingUnit: 'kg',
      totalWeight: 42,
      totalDistance: 42,
      itemAmount: 8625,
      deliveryFee: 624,
    ),
    BillingPaymentReceiptModel(
      orderID: '001',
      date: '5-3-2023',
      itemRequested: 'Radish',
      quantity: 115,
      seller: 'amal_7846',
      deliveryLocation: 'Delivery Location',
      weighingUnit: 'kg',
      totalWeight: 42,
      totalDistance: 42,
      itemAmount: 8625,
      deliveryFee: 624,
    ),
  ];
}
