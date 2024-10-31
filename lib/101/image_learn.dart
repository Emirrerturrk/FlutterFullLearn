import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/global/resource_context.dart';
import 'package:provider/provider.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                context.read<ResourceContext>().clear();
              },
              icon: const Icon(Icons.remove))
        ],
        title: Text(
            textAlign: TextAlign.center,
            context.read<ResourceContext>().model?.data?.length.toString() ??
                ""),
      ),
      body: Column(
        children: [
          SizedBox(
              width: 300,
              height: 400,
              child: Image.asset(
                "assets/aot.png",
                fit: BoxFit.cover,
              )),
        ],
      ),
    );
  }
}
