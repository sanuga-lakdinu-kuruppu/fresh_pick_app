part of 'buyer_landing_page_bloc.dart';

@immutable
abstract class BuyerLandingPageEvent {}

class TabChange extends BuyerLandingPageEvent {
  final int tabIndex;

  TabChange({required this.tabIndex});
}
