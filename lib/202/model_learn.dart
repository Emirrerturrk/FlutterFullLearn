// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_field
class PostModel1 {
  int? userId;
  int? id;
  String? title;
  String? body;
}

class PostModel2 {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel2(this.userId, this.id, this.title, this.body);
}

class PostModel3 {
  int userId;
  int id;
  String title;
  String body;

  PostModel3(this.body, this.id, this.title, this.userId);
}

class PostModel4 {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel4(
      {required this.body,
      required this.id,
      required this.title,
      required this.userId});
}

class PostModel5 {
  final int _userId;
  final int _id;
  final String _title;
  final String _body;

  PostModel5(
      {required String body,
      required int id,
      required String title,
      required int userId})
      : _userId = userId,
        _body = body,
        _title = title,
        _id = id;
}

class PostModel6 {
  late final int _userId;
  late final int _id;
  late final String _title;
  late final String _body;

  PostModel6(
      {required String body,
      required int id,
      required String title,
      required int userId}) {
    _userId = userId;
    _body = body;
    _title = title;
    _id = id;
  }
}

class PostModel7 {
  late final int _userId;
  late final int _id;
  late final String _title;
  late final String _body;

  PostModel7(
      {String body = "", int id = 0, String title = "", int userId = 0}) {
    _userId = userId;
    _body = body;
    _title = title;
    _id = id;
  }
}

class PostModel8 {
  final int? userId;
  final int? id;
  final String? title;
  String? body;

  PostModel8({this.userId, this.id, this.title, this.body});

  void updateBody(String? data) {
    if (data != null && data.isNotEmpty) {
      body = data;
    }
  }

  PostModel8 copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return PostModel8(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }
}
