// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_full_learn/303/generic_learn.dart';

class GenericUserCard extends StatelessWidget {
  const GenericUserCard({
    super.key,
    required this.model,
  });
  final GenericUser model;
  @override
  Widget build(BuildContext context) {
    return Text(model.name);
  }
}
