import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({super.key, required this.message});
  final String message;
  @override
  State<StatefullLifeCycleLearn> createState() =>
      _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  String _mesaage = "";
  late final bool _isOdd;
  @override
  void initState() {
    super.initState();
    _mesaage = widget.message;
    _isOdd = widget.message.length.isOdd;
    _computeName();
  }

  void _computeName() {
    if (_isOdd) {
      _mesaage += " Çift";
    } else {
      _mesaage += " Tek";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_mesaage),
      ),
      body: _isOdd
          ? TextButton(onPressed: () {}, child: Text(_mesaage))
          : ElevatedButton(onPressed: () {}, child: Text(_mesaage)),
    );
  }
}
