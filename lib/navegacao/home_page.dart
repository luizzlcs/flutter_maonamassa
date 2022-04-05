import 'package:flutter/material.dart';
import 'package:flutter_fundamentos/navegacao/page1.dart';
import 'package:flutter_fundamentos/navegacao/page2.dart';

import '../rotas_com_parametros/produto.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: RouteSettings(name: 'Page2'),
                    builder: (context) => Page2(),
                  ),
                );
              },
              child: Text('Page2 via PAGE'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Produto.produto);
              },
              child: Text('PRODUTO'),
            ),
          ],
        ),
      ),
    );
  }
}
