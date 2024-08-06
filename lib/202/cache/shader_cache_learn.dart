import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedCacheLearn extends StatefulWidget {
  const SharedCacheLearn({super.key});

  @override
  State<SharedCacheLearn> createState() => _SharedCacheLearnState();
}

class _SharedCacheLearnState extends LoadingStatefull<SharedCacheLearn> {
  int _currentValue = 0;

  @override
  void initState() {
    super.initState();
    getDefaultValues();
  }

  Future<void> getDefaultValues() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final int? counter = prefs.getInt("counter");
    _onChangedValue(counter.toString());
  }

  void _onChangedValue(String value) {
    final _value = int.tryParse(value);
    if (_value != null) {
      setState(() {
        _currentValue = _value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_currentValue.toString()),
        actions: [
          isLoading
              ? Center(child: CircularProgressIndicator())
              : SizedBox.shrink()
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [_saveValueButton(), _removeValueButton()],
      ),
      body: TextField(
        onChanged: (value) {
          _onChangedValue(value);
        },
      ),
    );
  }

  FloatingActionButton _saveValueButton() {
    return FloatingActionButton(
      child: Icon(Icons.save),
      onPressed: () async {
        changeLoading();
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setInt('counter', _currentValue);
        changeLoading();
      },
    );
  }

  FloatingActionButton _removeValueButton() {
    return FloatingActionButton(
      child: Icon(Icons.remove_circle_outline_outlined),
      onPressed: () async {
        changeLoading();
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.remove('counter');
        changeLoading();
      },
    );
  }
}

abstract class LoadingStatefull<T extends StatefulWidget> extends State<T> {
  bool isLoading = false;
  void changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }
}
