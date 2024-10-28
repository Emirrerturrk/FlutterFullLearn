// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/alert_lean.dart';
import 'package:flutter_full_learn/202/animated_learn_view.dart';
import 'package:flutter_full_learn/202/cache/shader_cache_learn.dart';
import 'package:flutter_full_learn/202/form_learn_view.dart';
import 'package:flutter_full_learn/202/model_learn_view.dart';
import 'package:flutter_full_learn/202/oop_learn_view.dart';
import 'package:flutter_full_learn/202/service/serive_learn_view.dart';
import 'package:flutter_full_learn/202/service/service_post_learn_view.dart';
import 'package:flutter_full_learn/202/sheet_learn.dart';
import 'package:flutter_full_learn/202/state_manage/state_manage_learn_view.dart';
import 'package:flutter_full_learn/202/tab_learn.dart';
import 'package:flutter_full_learn/202/theme/dark_theme.dart';
import 'package:flutter_full_learn/202/widget_size_enum_learn_view.dart';
import 'package:flutter_full_learn/303/call_back_learn.dart';
import 'package:flutter_full_learn/303/part/part_of_learn.dart';
import 'package:flutter_full_learn/303/reqres_resource/view/reqres_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: DarkTheme().theme,
        debugShowCheckedModeBanner: false,
        home: const ReqresView());
  }
}
