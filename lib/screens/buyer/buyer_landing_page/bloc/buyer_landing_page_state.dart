part of 'buyer_landing_page_bloc.dart';

@immutable
abstract class BuyerLandingPageState {
  final int tabIndex;

  const BuyerLandingPageState({required this.tabIndex});
}

class BuyerLandingPageInitial extends BuyerLandingPageState {
  const BuyerLandingPageInitial({required super.tabIndex});
}
