import 'package:flutter/material.dart';
import 'package:flutter_fundamentos/navegacao/page3.dart';

class Page2 extends StatelessWidget {
  
  static final pagina2 = '/page2';

  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page2"),
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
                    builder: (context) => Page3(),
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
              onPressed: () {},
              child: Text('Page2 via Named'),
            ),
          ],
        ),
      ),
    );
  }
}
