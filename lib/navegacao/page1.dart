import 'package:flutter/material.dart';
import 'package:flutter_fundamentos/navegacao/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: RouteSettings(name: 'Pagina3'),
                    builder: (context) => Page2(),
                  ),
                );
              },
              child: Text('Page 3'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('POP'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Page2.pagina2);
              },
              child: Text('Page2 via Named'),
            ),
          ],
        ),
      ),
    );
  }
}
