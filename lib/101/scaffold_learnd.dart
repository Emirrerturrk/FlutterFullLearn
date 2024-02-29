import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        title: const Text("Scaffold"),
      ),
      drawer: const Drawer(),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                    height: 200,
                  ));
        },
        backgroundColor: Colors.cyanAccent,
        focusColor: Colors.deepPurpleAccent,
        foregroundColor: Colors.black,
        hoverColor: Colors.deepPurpleAccent,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        splashColor: Colors.deepPurpleAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        tooltip: "Konum",
        child: const Icon(Icons.place),
      ),
      body: const Center(heightFactor: 1, child: Text("Selam")),
      bottomSheet: BottomSheet(
        onClosing: () {},
        builder: (context) {
          return const Text("X");
        },
      ),
      bottomNavigationBar:
          BottomNavigationBar(showUnselectedLabels: false, items: const [
        BottomNavigationBarItem(icon: Icon(Icons.dangerous), label: "Tehlike"),
        BottomNavigationBarItem(
            icon: Icon(Icons.safety_check), label: "Güvenlik"),
      ]),
    );
  }
}
