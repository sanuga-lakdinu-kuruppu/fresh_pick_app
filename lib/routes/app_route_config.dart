import 'package:flutter/material.dart';
import 'package:fresh_pick_app/buyer/presentation/screens/billing_payment/billing_payment.dart';
import 'package:fresh_pick_app/common/presentation/screens/error_page/error_page.dart';
import 'package:fresh_pick_app/buyer/presentation/screens/home/home.dart';
import 'package:fresh_pick_app/buyer/presentation/screens/marketplace/marketplace.dart';
import 'package:fresh_pick_app/buyer/presentation/screens/notifications/notifications.dart';
import 'package:fresh_pick_app/buyer/presentation/screens/orders/orders.dart';
import 'package:fresh_pick_app/buyer/presentation/screens/settings/settings.dart';
import 'package:fresh_pick_app/routes/app_route_constants.dart';
import 'package:fresh_pick_app/seller/presentation/screens/landing_screen/landing_screen_with_bnb.dart';
import 'package:fresh_pick_app/seller/presentation/screens/setting_screen/setting_screen.dart';
import 'package:go_router/go_router.dart';

class FreshPickRouter {
  GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        name: FreshPickRouteConstants.buyerHome,
        path: '/',
        pageBuilder: (context, state) {
          return const MaterialPage(child: BuyerHomePage());
        },
        routes: <RouteBase>[
          // Buyer Routes
          GoRoute(
            name: FreshPickRouteConstants.buyerMarketplace,
            path: 'buyer_marketplace',
            pageBuilder: (context, state) {
              return const MaterialPage(child: BuyerMarketplacePage());
            },
          ),
          GoRoute(
            name: FreshPickRouteConstants.buyerOrders,
            path: 'buyer_orders',
            pageBuilder: (context, state) {
              return const MaterialPage(child: BuyerOrdersPage());
            },
          ),
          GoRoute(
            name: FreshPickRouteConstants.buyerNotifications,
            path: 'buyer_notifications',
            pageBuilder: (context, state) {
              return const MaterialPage(child: BuyerNotifiationsPage());
            },
          ),
          GoRoute(
            name: FreshPickRouteConstants.buyerSettings,
            path: 'buyer_settings',
            pageBuilder: (context, state) {
              return const MaterialPage(child: BuyerSettingsPage());
            },
          ),
          GoRoute(
            name: FreshPickRouteConstants.buyerBillingPayments,
            path: 'buyer_billing_payments',
            pageBuilder: (context, state) {
              return const MaterialPage(child: BuyerBillingPaymentPage());
            },
          ),

          // Seller Routes
          GoRoute(
            name: FreshPickRouteConstants.sellerSettings,
            path: 'seller_settings',
            pageBuilder: (context, state) {
              return const MaterialPage(child: SettingScreen());
            },
          ),
          GoRoute(
            name: FreshPickRouteConstants.sellerLandingScreen,
            path: 'seller_landing_screen',
            pageBuilder: (context, state) {
              return const MaterialPage(child: LandingPage());
            },
          ),
        ],
      ),
    ],
    errorPageBuilder: (context, state) {
      return const MaterialPage(child: ErrorPage());
    },
  );
}
