import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/card_learn.dart';
import 'package:flutter_full_learn/101/image_learn.dart';
import 'package:flutter_full_learn/101/list_title_learn.dart';
import 'package:flutter_full_learn/101/stack_learn.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(viewportFraction: 0.9);
  int _currentPageIndex = 1;
  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(_currentPageIndex.toString())),
          const Spacer(),
          FloatingActionButton(
            onPressed: () {
              _pageController.previousPage(
                  duration: _DurationUtility._durationLow,
                  curve: Curves.slowMiddle);
            },
            child: const Icon(Icons.chevron_left),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: FloatingActionButton(
              onPressed: () {
                _pageController.nextPage(
                    duration: _DurationUtility._durationLow,
                    curve: Curves.linear);
              },
              child: const Icon(Icons.chevron_right),
            ),
          )
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: _updatePageIndex,
        children: const [
          CardLearnView(),
          ImageLearn(),
          ListTileLearn(),
          StackLearn()
        ],
      ),
    );
  }
}

class _DurationUtility {
  static const _durationLow = Duration(seconds: 1);
}
