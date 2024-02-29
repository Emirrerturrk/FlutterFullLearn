import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/product/language/language_items.dart';

class TextFiledLearn extends StatefulWidget {
  const TextFiledLearn({super.key});

  @override
  State<TextFiledLearn> createState() => _TextFiledLearnState();
}

class _TextFiledLearnState extends State<TextFiledLearn> {
  FocusNode focusNodeTextFiledOne = FocusNode();
  FocusNode focusNodeTextFiledTwo = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
              maxLength: 20,
              buildCounter: (BuildContext context,
                  {int? currentLength, bool? isFocused, int? maxLength}) {
                return _animatedContainer(currentLength);
              },
              focusNode: focusNodeTextFiledOne,
              textInputAction: TextInputAction.go,
              keyboardType: TextInputType.emailAddress,
              autofillHints: const [AutofillHints.email],
              decoration: _InputDecarator().emailInput),
          TextField(
            focusNode: focusNodeTextFiledTwo,
            decoration: const InputDecoration(border: OutlineInputBorder()),
          )
        ],
      ),
    );
  }

  AnimatedContainer _animatedContainer(int? currentLength) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      height: 10,
      width: 10.0 * (currentLength ?? 0),
      color: Colors.cyanAccent,
    );
  }
}

class _InputDecarator {
  final emailInput = const InputDecoration(
      prefixIcon: Icon(Icons.mail),
      border: OutlineInputBorder(),
      labelText: LanguageItems.emailInputTitle,
      fillColor: Colors.black,
      filled: true);
}
