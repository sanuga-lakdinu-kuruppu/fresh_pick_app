import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:fresh_pick_app/buyer/presentation/components/buyer_bottom_navbar/buyer_bottom_navbar.dart';
// import 'package:fresh_pick_app/buyer/presentation/screens/home/home.dart';

part 'buyer_bottom_navbar_event.dart';
part 'buyer_bottom_navbar_state.dart';

class BuyerBottomNavbarBloc
    extends Bloc<BuyerBottomNavbarEvent, BuyerBottomNavbarState> {
  BuyerBottomNavbarBloc() : super(const BuyerBottomNavbarInitial(tabIndex: 0)) {
    on<TabChange>(tabChange);
  }
  FutureOr<void> tabChange(
      TabChange event, Emitter<BuyerBottomNavbarState> emit) {
    if (event.tabIndex == 0) {
      emit(
          BuyerBottomNavbarNavigateToHomeActionState(tabIndex: event.tabIndex));
    } else if (event.tabIndex == 1) {
      emit(BuyerBottomNavbarNavigateToMarketplaceActionState(
          tabIndex: event.tabIndex));
    } else if (event.tabIndex == 2) {
      emit(BuyerBottomNavbarNavigateToOrdersActionState(
          tabIndex: event.tabIndex));
    } else if (event.tabIndex == 3) {
      emit(BuyerBottomNavbarNavigateToNotificationsActionState(
          tabIndex: event.tabIndex));
    } else if (event.tabIndex == 4) {
      emit(BuyerBottomNavbarNavigateToSettingsActionState(
          tabIndex: event.tabIndex));
    }
  }
}
