part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

enum PostStatus { loading, loaded, error }

abstract class HomeActionState extends HomeState {}

class HomeInitial extends HomeState {}

class HomeRecentSearchPostsLoadingState extends HomeState {}

class HomeRecentSearchPostsLoadedState extends HomeState {
  final List<PostModel> posts;
  HomeRecentSearchPostsLoadedState({required this.posts});
}

class HomeRecentSearchPostsErrorState extends HomeState {}
