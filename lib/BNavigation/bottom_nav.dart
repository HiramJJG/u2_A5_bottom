import 'package:flutter/material.dart';

class BNavigator extends StatefulWidget {
  final Function currentIndex;
  const BNavigator({Key? key, required this.currentIndex}) : super(key: key);

  @override
  State<BNavigator> createState() => _MyappState();
}

class _MyappState extends State<BNavigator> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: index,
        onTap: (int i) {
          setState(() {
            index = i;
            widget.currentIndex(i);
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xffcf0808),
        iconSize: 25.0,
        selectedFontSize: 20.0,
        unselectedFontSize: 20.0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Config"),
          BottomNavigationBarItem(icon: Icon(Icons.sports), label: "Deportes"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Buscar"),
        ]);
  }
}
