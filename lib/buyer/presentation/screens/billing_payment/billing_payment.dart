import 'package:flutter/material.dart';
import 'package:fresh_pick_app/buyer/presentation/widgets/alert_boxes/buyer_billing_payment_receipt_alertdialog.dart';
import 'package:fresh_pick_app/buyer/presentation/widgets/buyer_appbar/buyer_appbar.dart';
import 'package:fresh_pick_app/buyer/presentation/widgets/buyer_bottom_navbar/buyer_bottom_navbar.dart';
import 'package:fresh_pick_app/common/data/data_sources/local_sources/billing_receipt_local_source.dart';

class BuyerBillingPaymentPage extends StatefulWidget {
  const BuyerBillingPaymentPage({super.key});

  @override
  State<BuyerBillingPaymentPage> createState() =>
      _BuyerBillingPaymentPageState();
}

class _BuyerBillingPaymentPageState extends State<BuyerBillingPaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuyerAppbar(title: 'Billings & Payments'),
      bottomNavigationBar: const BuyerBottomNavbar(currentIndex: 4),
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.file_present_outlined, color: Colors.grey),
                        SizedBox(width: 10),
                        Text(
                          'Your Order Receipts',
                          style: TextStyle(
                              color: Color.fromRGBO(151, 151, 151, 1),
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Icon(Icons.list, color: Colors.grey)
                  ],
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 15,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return BuyerBillingPaymentReceiptAlertDialog(
                                  billingPaymentReceiptModel:
                                      BillingPaymentReceiptLocalSourceData()
                                          .billingPayementReceiptList[index]);
                            },
                          );
                        },
                        child: const Card(
                          child: Center(
                            child: ListTile(
                              leading: Icon(Icons.emoji_transportation),
                              title: Text(
                                'Order Id',
                                style: TextStyle(fontSize: 14),
                              ),
                              subtitle: Text(
                                '48675637839027',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              trailing: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('11.26 pm'),
                                  Text('18 June 2023'),
                                ],
                              ),
                              style: ListTileStyle.list,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
