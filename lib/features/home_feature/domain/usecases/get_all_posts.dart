import '../../../../core/error/failures.dart';
import '../entities/post.dart';
import '../repositories/posts_repo.dart';
import 'package:dartz/dartz.dart';

abstract class GetPostsUserCase {
  final BasePostsRePository repository;

  GetPostsUserCase(this.repository);

  Future<Either<Failure, PostsEntity>> execute() async {
    return await repository.getAllPosts();
  }
}
