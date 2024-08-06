import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/state_manage/state_learn_view_model.dart';

class StateManageLearnView extends StatefulWidget {
  const StateManageLearnView({super.key});

  @override
  State<StateManageLearnView> createState() => _StateManageLearnViewState();
}

class _StateManageLearnViewState extends StateLearnViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            isOpacity ? Colors.deepOrangeAccent : Colors.deepPurpleAccent,
        shadowColor: isVisible ? Colors.black : Colors.blueAccent,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeVisible(context);
          changeOpacity(context);
        },
      ),
    );
  }
}
