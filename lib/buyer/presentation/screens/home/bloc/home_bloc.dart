import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fresh_pick_app/buyer/data/data_sources/local_sources/post_local_source.dart';
import 'package:fresh_pick_app/buyer/domains/models/post/post_model.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeInitialRecentSearchPostsEvent>(homeInitialRecentSearchPostsEvent);
    on<HomeEvent>((event, emit) {});
  }

  FutureOr<void> homeInitialRecentSearchPostsEvent(
      HomeInitialRecentSearchPostsEvent event, Emitter<HomeState> emit) {
    emit(HomeRecentSearchPostsLoadingState());
    Future.delayed(const Duration(seconds: 3));
    emit(HomeRecentSearchPostsLoadedState(
        posts: PostListLocalSource().postList));
  }
}
