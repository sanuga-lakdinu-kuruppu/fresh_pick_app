import 'package:flutter/material.dart';
import 'package:fresh_pick_app/buyer/presentation/screens/error_page/error_page.dart';
import 'package:fresh_pick_app/buyer/presentation/screens/home/home.dart';
import 'package:fresh_pick_app/buyer/presentation/screens/marketplace/marketplace.dart';
import 'package:fresh_pick_app/buyer/presentation/screens/notifications/notifications.dart';
import 'package:fresh_pick_app/buyer/presentation/screens/orders/orders.dart';
import 'package:fresh_pick_app/buyer/presentation/screens/settings/settings.dart';
import 'package:fresh_pick_app/routes/app_route_constants.dart';
import 'package:go_router/go_router.dart';

class FreshPickRouter {
  GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        name: FreshPickRouteConstants.buyerHome,
        path: '/',
        pageBuilder: (context, state) {
          return const MaterialPage(child: Home());
        },
        routes: <RouteBase>[
          GoRoute(
            name: FreshPickRouteConstants.buyerMarketplace,
            path: 'buyer_marketplace',
            pageBuilder: (context, state) {
              return const MaterialPage(child: Marketplace());
            },
          ),
          GoRoute(
            name: FreshPickRouteConstants.buyerOrders,
            path: 'buyer_orders',
            pageBuilder: (context, state) {
              return const MaterialPage(child: Orders());
            },
          ),
          GoRoute(
            name: FreshPickRouteConstants.buyerNotifications,
            path: 'buyer_notifications',
            pageBuilder: (context, state) {
              return const MaterialPage(child: Notifications());
            },
          ),
          GoRoute(
            name: FreshPickRouteConstants.buyerSettings,
            path: 'buyer_settings',
            pageBuilder: (context, state) {
              return const MaterialPage(child: Settings());
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
