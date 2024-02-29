import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: const Text("Text"),
          ),
          const ElevatedButton(onPressed: null, child: Text("Elevated")),
          IconButton(onPressed: () {}, icon: const Icon(Icons.place)),
          const FloatingActionButton(
            onPressed: null,
            child: Icon(Icons.adb),
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.deepPurpleAccent,
            ),
            child: const Text("Outlined"),
          ),
          InkWell(
            onTap: () {},
            child: const Text("InkWell"),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: const Padding(
                padding:
                    EdgeInsets.only(bottom: 10, top: 10, left: 40, right: 40),
                child: Text(
                  "Place Bid",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
