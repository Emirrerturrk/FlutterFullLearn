import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          FittedBox(
            child: Text(
              "Deneme",
              style: Theme.of(context).textTheme.displayLarge,
              maxLines: 1,
            ),
          ),
          Container(color: Colors.purpleAccent, height: 200),
          const Divider(),
          SizedBox(
            height: 200,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              Container(color: Colors.blue, width: 100),
              Container(color: Colors.yellow, width: 100),
              Container(color: Colors.red, width: 100),
              Container(color: Colors.white, width: 100),
              Container(color: Colors.red, width: 100),
            ]),
          ),
          const Divider(),
          Container(color: Colors.greenAccent, height: 200),
          const Divider(),
          Container(color: Colors.deepOrangeAccent, height: 200),
          const Divider(),
          Container(color: Colors.blueAccent, height: 200),
          const _ListDemo()
        ],
      ),
    );
  }
}

class _ListDemo extends StatefulWidget {
  const _ListDemo({super.key});

  @override
  State<_ListDemo> createState() => __ListDemoState();
}

class __ListDemoState extends State<_ListDemo> {
  @override
  void initState() {
    print("Bas");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
