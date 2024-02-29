import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/counter_hello_button.dart';
import 'package:flutter_full_learn/product/language/language_items.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({super.key});

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int _countValue = 0;
  void _uppdateCounter(bool isIncrement) {
    if (isIncrement) {
      _countValue = _countValue + 1;
    } else {
      _countValue = _countValue - 1;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LanguageItems.welcomeTitle),
      ),
      body: Column(
        children: [
          Center(
            child: Text(_countValue.toString(),
                style: Theme.of(context).textTheme.displayMedium),
          ),
          const Placeholder(),
          const CounterHelloButton()
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _addButton(),
          _removeButton(),
        ],
      ),
    );
  }

  Padding _removeButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: () {
          _uppdateCounter(false);
        },
        child: const Icon(Icons.remove),
      ),
    );
  }

  FloatingActionButton _addButton() {
    print("Hi");
    return FloatingActionButton(
      onPressed: () {
        _uppdateCounter(true);
      },
      child: const Icon(Icons.add),
    );
  }
}
