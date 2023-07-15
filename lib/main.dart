import 'package:flutter/material.dart';
import 'package:fresh_pick_app/routes/app_route_config.dart';
// import 'package:fresh_pick_app/buyer/presentation/screens/home/home.dart';
// import 'package:fresh_pick_app/buyer/routes/generated_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: FreshPickRouter().router,
      // routeInformationProvider:
      //     FreshPickRouter().router.routeInformationProvider,
      // routeInformationParser: FreshPickRouter().router.routeInformationParser,
      // routerDelegate: FreshPickRouter().router.routerDelegate,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
