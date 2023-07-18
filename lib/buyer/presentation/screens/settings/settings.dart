import 'package:flutter/material.dart';
import 'package:fresh_pick_app/buyer/utils/colors.dart';
import 'package:fresh_pick_app/common/presentation/widgets/settings_billing_payment_card/settings_billing_payment_card.dart';
import 'package:fresh_pick_app/routes/app_route_constants.dart';
import 'package:go_router/go_router.dart';
import '../../widgets/buyer_appbar/buyer_appbar.dart';
import '../../widgets/buyer_bottom_navbar/buyer_bottom_navbar.dart';

class BuyerSettingsPage extends StatefulWidget {
  const BuyerSettingsPage({Key? key}) : super(key: key);

  @override
  State<BuyerSettingsPage> createState() => _BuyerSettingsPageState();
}

class _BuyerSettingsPageState extends State<BuyerSettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuyerAppbar(title: 'Settings'),
      bottomNavigationBar: const BuyerBottomNavbar(currentIndex: 4),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    minimumSize: const Size(double.maxFinite, 67),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.blueAccent),
                onPressed: () {
                  GoRouter.of(context)
                      .goNamed(FreshPickRouteConstants.sellerLandingScreen);
                },
                child: const Center(
                  child: Text(
                    'Switch to Selling',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                width: 390,
                height: 140,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 0,
                        offset: Offset(0, 4),
                        blurRadius: 2,
                        color: Colors.grey,
                      )
                    ]),
                child: Row(
                  children: [
                    Container(
                      width: 105,
                      height: 105,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: NetworkImage(
                                'https://th.bing.com/th/id/OIP.RL7XzQfWqZEpUako3s38cwAAAA?pid=ImgDet&rs=1'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      width: 200,
                      height: 140,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                const SizedBox(
                                  width: 150,
                                  child: Text(
                                    'Vihara Piyumanthi',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                                Container(
                                  width: 50,
                                  padding: const EdgeInsets.all(2.0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    border: Border.all(
                                        color: buyerMainColor, width: 2),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 6,
                                        width: 6,
                                        decoration: const BoxDecoration(
                                          color: Colors.yellow,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text(
                                        'Active',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.greenAccent),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            const Row(
                              children: [
                                Icon(Icons.star, color: Colors.yellow),
                                Icon(Icons.star, color: Colors.yellow),
                                Icon(Icons.star, color: Colors.yellow),
                                Icon(Icons.star, color: Colors.yellow),
                                Icon(Icons.star, color: Colors.red),
                                SizedBox(width: 10),
                                Text('4 / 5')
                              ],
                            )
                          ]),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Your Info',
                    style: TextStyle(
                        color: Color.fromRGBO(151, 151, 151, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(20.0),
                width: 390,
                height: 360,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 0,
                        offset: Offset(0, 4),
                        blurRadius: 2,
                        color: Colors.grey,
                      )
                    ]),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Full Name',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              'D. Y. Vihara Piyumanthi',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.edit),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Address',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              '165/52, Main Road, Galle.',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.edit),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mobile Number',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              '+94771234567',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.edit),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Email Address',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              'viharapiyumanthi@gmail.com',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.edit),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nic Number',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              '199813456V',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.edit),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Date of Birth',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              '25 February 1998',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.edit))
                      ],
                    ),
                    const SizedBox(height: 5),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(
                height: 170,
                child: SettingsBillingPaymentCard(),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Your Preferences',
                      style: TextStyle(
                          color: Color.fromRGBO(151, 151, 151, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.w700)),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(20.0),
                width: 390,
                height: 290,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 0,
                        offset: Offset(0, 4),
                        blurRadius: 2,
                        color: Colors.grey,
                      )
                    ]),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Language',
                                style: TextStyle(color: Colors.grey)),
                            Text('English',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black))
                          ],
                        ),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.edit))
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('Verification',
                                    style: TextStyle(color: Colors.grey)),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.verified,
                                  color: Colors.red,
                                )
                              ],
                            ),
                            Text('Not Verified',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black))
                          ],
                        ),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.edit))
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Password',
                                style: TextStyle(color: Colors.grey)),
                            Text('........',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black))
                          ],
                        ),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.edit))
                      ],
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(double.maxFinite, 67),
                            shape: const RoundedRectangleBorder(
                                side: BorderSide(
                                    color: Colors.greenAccent, width: 2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            backgroundColor: Colors.white),
                        onPressed: () {},
                        child: const Center(
                          child: Text('Romove Account',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.greenAccent,
                                  fontWeight: FontWeight.bold)),
                        ))
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    minimumSize: const Size(double.maxFinite, 67),
                    backgroundColor: Colors.greenAccent,
                    foregroundColor: Colors.white),
                onPressed: () {},
                child: const Center(
                  child: Text('Logout',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
