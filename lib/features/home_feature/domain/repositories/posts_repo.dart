import '../entities/post.dart';

abstract class PostsRePository {
  Future<List<Post>> getAllPosts();
}
