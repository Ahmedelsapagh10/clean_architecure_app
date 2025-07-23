import 'package:equatable/equatable.dart';

class PostsEntity extends Equatable {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  PostsEntity({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  @override
  List<Object?> get props => [
        userId,
        id,
        title,
        completed,
      ];
}
