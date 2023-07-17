part of 'buyer_bottom_navbar_bloc.dart';

@immutable
abstract class BuyerBottomNavbarState {
  final int tabIndex;
  const BuyerBottomNavbarState({required this.tabIndex});
}

abstract class BuyerBottomNavbarActionState extends BuyerBottomNavbarState {
  const BuyerBottomNavbarActionState({required super.tabIndex});
}

class BuyerBottomNavbarInitial extends BuyerBottomNavbarState {
  const BuyerBottomNavbarInitial({required super.tabIndex});
}

class BuyerBottomNavbarNavigateToHomeActionState
    extends BuyerBottomNavbarActionState {
  const BuyerBottomNavbarNavigateToHomeActionState({required super.tabIndex});
}

class BuyerBottomNavbarNavigateToMarketplaceActionState
    extends BuyerBottomNavbarActionState {
  const BuyerBottomNavbarNavigateToMarketplaceActionState(
      {required super.tabIndex});
}

class BuyerBottomNavbarNavigateToOrdersActionState
    extends BuyerBottomNavbarActionState {
  const BuyerBottomNavbarNavigateToOrdersActionState({required super.tabIndex});
}

class BuyerBottomNavbarNavigateToNotificationsActionState
    extends BuyerBottomNavbarActionState {
  const BuyerBottomNavbarNavigateToNotificationsActionState(
      {required super.tabIndex});
}

class BuyerBottomNavbarNavigateToSettingsActionState
    extends BuyerBottomNavbarActionState {
  const BuyerBottomNavbarNavigateToSettingsActionState(
      {required super.tabIndex});
}
