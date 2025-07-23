import '../../../../core/error/failures.dart';
import '../entities/post.dart';
import 'package:dartz/dartz.dart';

abstract class BasePostsRePository {
  Future<Either<Failure, PostsEntity>> getAllPosts();
}
