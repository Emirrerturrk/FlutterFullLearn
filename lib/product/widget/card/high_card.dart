// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class HighCard extends StatelessWidget {
  const HighCard({
    super.key,
    required this.items,
  });

  final List<String> items;
  @override
  Widget build(BuildContext context) {
    return Text(
      items.join(","),
      style: Theme.of(context).textTheme.headlineLarge,
    );
  }
}
