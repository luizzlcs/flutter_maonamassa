import 'package:flutter/material.dart';

class ImagesPage extends StatelessWidget {
  const ImagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(
          color: Colors.white,
          child: const Text(
            'Academia do Flutter',
            style: TextStyle(
                fontFamily: 'Tourney',
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              child: const Center(
                child: Text(
                  ' Paisagem ',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    backgroundColor: Color.fromARGB(179, 19, 36, 36),
                  ),
                ),
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/paisagem.jpg'),
                ),
              ),
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.deepOrangeAccent,
              child: Image.network(
                'https://repository-images.githubusercontent.com/31792824/fb7e5700-6ccc-11e9-83fe-f602e1e1a9f1',
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
