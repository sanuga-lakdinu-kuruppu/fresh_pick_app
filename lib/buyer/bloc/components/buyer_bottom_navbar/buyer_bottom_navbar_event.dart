part of 'buyer_bottom_navbar_bloc.dart';

@immutable
abstract class BuyerBottomNavbarEvent {}

class TabChange extends BuyerBottomNavbarEvent {
  final int tabIndex;
  TabChange({required this.tabIndex});
}

// class BuyerBottomNavbarNavigateToHomeEvent extends BuyerBottomNavbarEvent {}

// class BuyerBottomNavbarNavigateToMarketplaceEvent
//     extends BuyerBottomNavbarEvent {}

// class BuyerBottomNavbarNavigateToOrdersEvent extends BuyerBottomNavbarEvent {}

// class BuyerBottomNavbarNavigateToNotificationsEvent
//     extends BuyerBottomNavbarEvent {}

// class BuyerBottomNavbarNavigateToSettingsEvent extends BuyerBottomNavbarEvent {}
