// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/widget/button/answer_button.dart';
import 'package:flutter_full_learn/product/widget/button/loading_button.dart';
import 'package:flutter_full_learn/product/widget/callback_dropdown.dart';

class CallBackLearn extends StatefulWidget {
  const CallBackLearn({super.key});

  @override
  State<CallBackLearn> createState() => _CallBackLearnState();
}

class _CallBackLearnState extends State<CallBackLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CallBackDropDown(
            onUserSelected: (CallbackUser user) {},
          ),
          AnswerButton(
            onNumber: (number) {
              return number % 3 == 1;
            },
          ),
          LoadingButton(
            title: "Save",
            callback: () {
              return Future.delayed(const Duration(seconds: 1));
            },
          )
        ],
      ),
    );
  }
}

class CallbackUser {
  final String name;
  final int id;

  CallbackUser(this.name, this.id);
  static List<CallbackUser> dummyUsers() {
    return [
      CallbackUser("Emir", 123),
      CallbackUser("Emir2", 121),
      CallbackUser("Emir3", 124),
    ];
  }

  @override
  bool operator ==(covariant CallbackUser other) {
    if (identical(this, other)) return true;

    return other.name == name && other.id == id;
  }

  @override
  int get hashCode => name.hashCode ^ id.hashCode;
}
