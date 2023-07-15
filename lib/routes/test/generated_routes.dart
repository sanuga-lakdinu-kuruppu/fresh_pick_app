// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:fresh_pick_app/buyer/presentation/screens/buyer_landing_page/bloc/buyer_landing_page_bloc.dart';
// import 'package:fresh_pick_app/buyer/presentation/screens/buyer_landing_page/buyer_landing_page.dart';

// class RouteGenerator {
//   final BuyerLandingPageBloc buyerLandingPageBloc = BuyerLandingPageBloc();
//   Route<dynamic> generateRoute(RouteSettings settings) {
//     // final args = settings.arguments;

//     switch (settings.name) {
//       case '/':
//         return MaterialPageRoute(
//           builder: (_) => BlocProvider<BuyerLandingPageBloc>.value(
//             value: buyerLandingPageBloc,
//             child: const BuyerLandingPage(),
//           ),
//         );

//       default:
//         return _errorRoute();
//     }
//   }

//   static Route<dynamic> _errorRoute() {
//     return MaterialPageRoute(builder: (_) {
//       return Scaffold(
//         appBar: AppBar(
//           title: const Text('Error'),
//         ),
//         body: const Center(
//           child: Text('ERROR'),
//         ),
//       );
//     });
//   }
// }
