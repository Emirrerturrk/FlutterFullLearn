import 'package:flutter/material.dart';
import 'package:flutter_full_learn/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: const RandomImage(),
              onTap: () {},
              dense: true,
              subtitle: const Text(
                "How do you use cards",
              ),
              leading: const Icon(Icons.work),
              trailing: const Icon(Icons.chevron_right),
            ),
          )
        ],
      ),
    );
  }
}
