import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: Center(
          child: Text(
            'Drawer aberto!',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
      endDrawer: Drawer(),
      appBar: AppBar(
        title: const Text('Meu primeiro  App'),
        actions: const [
          Icon(Icons.abc_outlined),
          Icon(Icons.ac_unit_rounded),
          Icon(Icons.accessible),
          Icon(Icons.travel_explore_sharp),
          Icon(Icons.play_arrow_outlined),
        ],
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(99),
                bottomRight: Radius.circular(0),
                topLeft: Radius.circular(0),
                topRight: Radius.circular(99),
              ),
              color: Colors.red,
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 50,
                  offset: Offset(5, 5),
                ),
                BoxShadow(
                  color: Color.fromARGB(255, 248, 246, 246),
                  blurRadius: 5,
                  offset: Offset(-0, -1),
                )
              ]),
        ),
      ),
    );
  }
}
