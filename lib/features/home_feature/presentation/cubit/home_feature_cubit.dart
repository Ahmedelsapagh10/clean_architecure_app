import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/post.dart';
import '../../domain/usecases/get_all_posts.dart';

part 'home_feature_state.dart';

class HomeFeatureCubit extends Cubit<HomeFeatureState> {
  HomeFeatureCubit(this.getPostsUserCase) : super(HomeFeatureInitial());

  final GetPostsUserCase getPostsUserCase;
  PostsEntity? posts;
  Future<void> fetchPosts() async {
    emit(HomeFeatureLoading());
    try {
      var res = await getPostsUserCase.execute();
      res.fold((l) {}, (r) {
        posts = r;
        emit(HomeFeatureLoaded(post: posts));
      });
      log("Posts fetched successfully: ${posts} posts loaded");
    } catch (e) {
      emit(HomeFeatureError());
    }
  }
}
