import 'package:flutter/material.dart';
import 'package:fresh_pick_app/buyer/utils/colors.dart';
import 'package:fresh_pick_app/common/domain/models/billing_payment_receipt_model.dart';

class BuyerBillingPaymentReceiptAlertDialog extends StatelessWidget {
  const BuyerBillingPaymentReceiptAlertDialog(
      {super.key, required this.billingPaymentReceiptModel});

  final BillingPaymentReceiptModel billingPaymentReceiptModel;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.only(right: 5, left: 5),
      title: const Text(
        'Receipt',
        textAlign: TextAlign.center,
      ),
      content: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Column(
          children: [
            RichText(
              text: TextSpan(
                text: 'Order ID : ',
                style: const TextStyle(color: Colors.black, fontSize: 14),
                children: <TextSpan>[
                  TextSpan(
                    text: billingPaymentReceiptModel.orderID,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Date : ',
                style: const TextStyle(color: Colors.black, fontSize: 14),
                children: <TextSpan>[
                  TextSpan(
                    text: billingPaymentReceiptModel.date.toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Item Requested : ',
                style: const TextStyle(color: Colors.black, fontSize: 14),
                children: <TextSpan>[
                  TextSpan(
                    text: billingPaymentReceiptModel.itemRequested,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Quantity : ',
                style: const TextStyle(color: Colors.black, fontSize: 14),
                children: <TextSpan>[
                  TextSpan(
                    text: billingPaymentReceiptModel.quantity.toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Seller : ',
                style: const TextStyle(color: Colors.black, fontSize: 14),
                children: <TextSpan>[
                  TextSpan(
                    text: billingPaymentReceiptModel.seller,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
            ),
            RichText(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              text: TextSpan(
                text: 'Delivery Location : ',
                style: const TextStyle(color: Colors.black, fontSize: 14),
                children: <TextSpan>[
                  TextSpan(
                    text: billingPaymentReceiptModel.deliveryLocation,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Total Weight : ',
                style: const TextStyle(color: Colors.black, fontSize: 14),
                children: <TextSpan>[
                  TextSpan(
                    text: billingPaymentReceiptModel.totalWeight.toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Total Distance : ',
                style: const TextStyle(color: Colors.black, fontSize: 14),
                children: <TextSpan>[
                  TextSpan(
                    text: billingPaymentReceiptModel.totalDistance.toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Item Amount : ',
                style: const TextStyle(color: Colors.black, fontSize: 14),
                children: <TextSpan>[
                  TextSpan(
                    text: billingPaymentReceiptModel.itemAmount.toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Delivery Fee : ',
                style: const TextStyle(color: Colors.black, fontSize: 14),
                children: <TextSpan>[
                  TextSpan(
                    text: billingPaymentReceiptModel.deliveryFee.toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Total Amount : ',
                style: const TextStyle(color: Colors.black, fontSize: 14),
                children: <TextSpan>[
                  TextSpan(
                    text: (billingPaymentReceiptModel.itemAmount +
                            billingPaymentReceiptModel.deliveryFee)
                        .toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: buyerMainColor,
                // minimumSize: const Size(80, 30),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Download',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                side: const BorderSide(
                  color: buyerMainColor,
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Cancel',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: buyerMainColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
