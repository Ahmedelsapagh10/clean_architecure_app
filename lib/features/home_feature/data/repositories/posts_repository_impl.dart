import 'package:clean_architecure_app/features/home_feature/data/datasources/post.dart';
import 'package:clean_architecure_app/features/home_feature/domain/entities/post.dart';

import '../../../../core/error/failures.dart';
import '../../domain/repositories/posts_repo.dart';
import 'package:dartz/dartz.dart';

class PostsRepositoryImplementation implements BasePostsRePository {
  final RemoteDataSource remoteDataSource;

  PostsRepositoryImplementation(this.remoteDataSource);
  @override
  Future<Either<Failure, PostsEntity>> getAllPosts() {
    return remoteDataSource.getAllPosts();
  }
}
