import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fresh_pick_app/seller/data/models/post/post.dart';
import 'package:fresh_pick_app/test_data/post_list.dart';
import 'package:meta/meta.dart';

part 'marketplace_page_event.dart';
part 'marketplace_page_state.dart';

class MarketplacePageBloc
    extends Bloc<MarketplacePageEvent, MarketplacePageState> {
  MarketplacePageBloc() : super(MarketplacePageInitial()) {
    on<InitialFetchEvent>(initialFetchEvent);
  }

  FutureOr<void> initialFetchEvent(
      InitialFetchEvent event, Emitter<MarketplacePageState> emit) async {
    emit(MarketplaceLoadingState());
    await Future.delayed(const Duration(seconds: 3));
    emit(MarketplaceLoadingSucessState(
        posts: PostListData.postList
            .map((e) => PostDataModel(
                imageUrl: e['imageUrl'],
                id: e['id'],
                productName: e['productName'],
                productCategory: e['productCategory'],
                productSubCategory: e['productSubCategory'],
                minimumOrderQty: e['minimumOrderQty'],
                unit: e['unit'],
                minimumOrderPrice: e['minimumOrderPrice'],
                minimumOrderPricePer: e['minimumOrderPricePer'],
                productRating: e['productRating'],
                productStatus: e['productStatus'],
                countCompletedOrders: e['countCompletedOrders']))
            .toList()));
  }
}
