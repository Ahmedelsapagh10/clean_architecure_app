part of 'home_feature_cubit.dart';

abstract class HomeFeatureState {
  const HomeFeatureState();
}

class HomeFeatureInitial extends HomeFeatureState {}

class HomeFeatureLoading extends HomeFeatureState {}

class HomeFeatureLoaded extends HomeFeatureState {
  final PostsEntity? post;

  HomeFeatureLoaded({this.post});
}

class HomeFeatureError extends HomeFeatureState {}
