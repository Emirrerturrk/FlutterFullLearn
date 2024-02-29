import 'package:flutter/material.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({super.key});

  final String _title = "App Bar";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text(_title),
        leading: const Icon(Icons.chevron_left),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.satellite_outlined)),
          //const CircularProgressIndicator()
        ],
      ),
    );
  }
}
