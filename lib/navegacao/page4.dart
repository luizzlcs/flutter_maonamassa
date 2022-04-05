import 'package:flutter/material.dart';
import 'package:flutter_fundamentos/navegacao/page1.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 4'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                /* Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      settings: RouteSettings(name: 'Pagina1'),
                      builder: (context) => Page1(),
                    ),
                    ModalRoute.withName('Page2')); */ // removendo a página 3 e 4 parina

                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      settings: RouteSettings(name: 'Pagina1'),
                      builder: (context) => Page1(),
                    ),
                    (route) => route
                        .isFirst); // Removendo todas as páginas, menos  a primeira
              },
              child: Text('Page1 viva PAGE'),
            ), //

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
