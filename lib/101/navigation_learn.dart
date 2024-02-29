import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/navigate_detail_learn.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn>
    with NavigatorManager {
  List<int> selecteItems = [];
  void addSelected(int index, bool isAdd) {
    setState(() {
      isAdd ? selecteItems.add(index) : selecteItems.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(itemBuilder: (context, index) {
        return TextButton(
          onPressed: () async {
            final response = await navigateToWidgetNormal<bool>(
                context,
                NavigateLearnDart(
                  isOkey: selecteItems.contains(index),
                ));
            if (response is bool) {
              addSelected(index, response);
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Placeholder(
                color: selecteItems.contains(index)
                    ? Colors.green
                    : Colors.deepPurpleAccent),
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.navigate_next), onPressed: () async {}),
    );
  }
}

mixin class NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true,
        settings: const RouteSettings()));
  }

  Future<T?> navigateToWidgetNormal<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true,
        settings: const RouteSettings()));
  }
}
