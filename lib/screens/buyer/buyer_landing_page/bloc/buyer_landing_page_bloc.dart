import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'buyer_landing_page_event.dart';
part 'buyer_landing_page_state.dart';

class BuyerLandingPageBloc
    extends Bloc<BuyerLandingPageEvent, BuyerLandingPageState> {
  BuyerLandingPageBloc() : super(const BuyerLandingPageInitial(tabIndex: 0)) {
    on<BuyerLandingPageEvent>((event, emit) {
      if (event is TabChange) {
        emit(BuyerLandingPageInitial(tabIndex: event.tabIndex));
      }
    });
  }
}
