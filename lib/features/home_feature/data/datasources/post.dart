//https://www.jsondataai.com/api/zjNckp9
import 'dart:developer';

import 'package:clean_architecure_app/features/home_feature/data/models/posts_model.dart';
import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';

abstract class BaseRemoteDataSource {
  Future<Either<Failure, PostsModel>> getAllPosts();
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<Either<Failure, PostsModel>> getAllPosts() async {
    try {
      var response =
          await Dio().get('https://jsonplaceholder.typicode.com/todos/1');
      return Right(PostsModel.fromJson(response.data));
    } on DioException catch (e) {
      log("Error in RemoteDataSource.getAllPosts: ${e.message}");
      throw Exception("Failed to load posts: ${e.message}");
    } catch (e) {
      log("Error in RemoteDataSource.getAllPosts: $e");
      return Left(ServerFailure());
    }
  }
}
      /// Rethrow the error.
      /// If any other error occurs, log the error.
      /// Return an empty [PostsModel].
