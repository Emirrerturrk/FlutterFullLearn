import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_full_learn/202/service/post_moder.dart';

abstract class IPostService {
  Future<bool> addItemsToService(PostModel postModel);
  Future<bool> putItemsToService(PostModel postModel, int id);
  Future<bool> deleteItemsToService(int id);
  Future<List<PostModel>?> fetchItemsAdvanced();
}

class PostServices implements IPostService {
  late final Dio _networkManager;
  PostServices()
      : _networkManager =
            Dio(BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com/"));

  @override
  Future<bool> addItemsToService(PostModel postModel) async {
    try {
      final response = await _networkManager.post(_PostServicePaths.posts.name,
          data: postModel);
      return response.statusCode == HttpStatus.ok;
    } on DioException catch (error) {
      _ShowDebug.showDioError(error);
    }
    return false;
  }

  @override
  Future<bool> putItemsToService(PostModel postModel, int id) async {
    try {
      final response = await _networkManager
          .post("${_PostServicePaths.posts.name}/$id", data: postModel);
      return response.statusCode == HttpStatus.ok;
    } on DioException catch (error) {
      _ShowDebug.showDioError(error);
    }
    return false;
  }

  @override
  Future<bool> deleteItemsToService(int id) async {
    try {
      final response =
          await _networkManager.post("${_PostServicePaths.posts.name}/$id");
      return response.statusCode == HttpStatus.ok;
    } on DioException catch (error) {
      _ShowDebug.showDioError(error);
    }
    return false;
  }

  @override
  Future<List<PostModel>?> fetchItemsAdvanced() async {
    try {
      final response = await Dio().get(_PostServicePaths.posts.name);

      if (response.statusCode == HttpStatus.ok) {
        final _datas = response.data;
        if (_datas is List) {
          return _datas.map((e) => PostModel.fromJson(e)).toList();
        }
      }
    } on DioException catch (exception) {
      _ShowDebug.showDioError(exception);
    }
    return null;
  }
}

enum _PostServicePaths {
  posts,
}

class _ShowDebug {
  static void showDioError(DioException error) {
    if (kDebugMode) {
      print(error.message);
    }
  }
}
