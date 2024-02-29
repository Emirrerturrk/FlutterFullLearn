import 'package:flutter/material.dart';

class MyCollectionsDemos extends StatefulWidget {
  const MyCollectionsDemos({super.key});

  @override
  State<MyCollectionsDemos> createState() => _MyCollectionsDemosState();
}

class _MyCollectionsDemosState extends State<MyCollectionsDemos> {
  late final List<CollectionModel> _items;
  @override
  void initState() {
    super.initState();
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: _items.length,
        padding: PaddingUtiliy().paddingHorizontal,
        itemBuilder: (context, index) {
          return _CategoryCard(model: _items[index]);
        },
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    super.key,
    required CollectionModel model,
  }) : _model = model;

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtiliy().paddingBottom,
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: PaddingUtiliy().paddingAll,
          child: Column(
            children: [
              Expanded(child: Image.asset(_model.imagePath)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(_model.title), Text("${_model.price}")],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final int price;

  CollectionModel(
      {required this.imagePath, required this.title, required this.price});
}

class PaddingUtiliy {
  final paddingBottom = const EdgeInsets.only(bottom: 20);
  final paddingAll = const EdgeInsets.all(8.0);
  final paddingHorizontal = const EdgeInsets.symmetric(horizontal: 20);
}

class CollectionItems {
  late final List<CollectionModel> items;

  CollectionItems() {
    items = [
      CollectionModel(
          imagePath: ProjectImage.imageCollection, title: "Emir1", price: 777),
      CollectionModel(
          imagePath: ProjectImage.imageCollection, title: "Emir2", price: 777),
      CollectionModel(
          imagePath: ProjectImage.imageCollection, title: "Emir3", price: 777),
      CollectionModel(
          imagePath: ProjectImage.imageCollection, title: "Emir4", price: 77),
    ];
  }
}

class ProjectImage {
  static const imageCollection = "assets/aot.png";
}
