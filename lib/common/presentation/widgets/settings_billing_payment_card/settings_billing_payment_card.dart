import 'package:flutter/material.dart';
import 'package:fresh_pick_app/routes/app_route_constants.dart';
import 'package:go_router/go_router.dart';

class SettingsBillingPaymentCard extends StatelessWidget {
  const SettingsBillingPaymentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: const EdgeInsets.all(25.0),
        width: 350,
        height: 165,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            BoxShadow(
              spreadRadius: 0,
              offset: Offset(0, 4),
              blurRadius: 2,
              color: Colors.grey,
            )
          ],
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Colors.greenAccent,
            ],
            stops: [0.1, 1.0],
          ),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Billing & Payments',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.greenAccent)),
                const SizedBox(height: 10),
                const Text(
                  'Secure payments for secure future',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                    minimumSize: const Size(80, 30),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                  onPressed: () {
                    GoRouter.of(context)
                        .goNamed(FreshPickRouteConstants.buyerBillingPayments);
                  },
                  child: const Text('More'),
                ),
              ],
            ),
            const SizedBox(width: 10),
            Container(
              width: 90,
              height: 90,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/billing.png'))),
            ),
          ],
        ),
      ),
    );
  }
}
