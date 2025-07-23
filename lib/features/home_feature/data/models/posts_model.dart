import '../../domain/entities/post.dart';

class PostsModel extends PostsEntity {
  PostsModel({
    super.userId,
    super.completed,
    super.id,
    super.title,
  });

  factory PostsModel.fromJson(Map<String, dynamic> json) => PostsModel(
        userId: json["userId"],
        completed: json["completed"],
        title: json["title"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "userId": userId,
        "title": title,
        "completed": completed,
      };
}
