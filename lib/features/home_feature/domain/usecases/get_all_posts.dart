import '../entities/post.dart';
import '../repositories/posts_repo.dart';

abstract class GetPostsUserCase {
  final PostsRePository repository;

  GetPostsUserCase(this.repository);

  Future<List<Post>> execute() async {
    return await repository.getAllPosts();
  }
}
