// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  var user9 = PostModel8(body: "a");
  @override
  void initState() {
    super.initState();
    final user1 = PostModel1()..userId = 1;
    user1.body = "hi";
    final user2 = PostModel2(1, 2, "A", "B");
    final user3 = PostModel3("body", 2, "title", 4);
    final user4 = PostModel4(body: "body", id: 1, title: "title", userId: 5);
    final user5 = PostModel5(body: "body", id: 0, title: "title", userId: 22);
    final user6 = PostModel6(body: "body", id: 1, title: "title", userId: 2);
    final user7 = PostModel7();
    final user8 = PostModel8();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            user9 = user9.copyWith(title: "Deneme");
            user9.updateBody(null);
          });
        },
      ),
      appBar: AppBar(
        title: Text(user9.title ?? "Not has any data"),
      ),
    );
  }
}
