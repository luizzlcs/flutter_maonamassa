import 'package:flutter/material.dart';
import 'package:flutter_fundamentos/rotas_com_parametros/detalhe_produto.dart';

class Produto extends StatelessWidget {
  static final produto = '/produto';

  const Produto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PRODUTO'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      settings: RouteSettings(
                        name: 'produto',
                        arguments: {'id': 12},
                      ),
                      builder: (context) => DetalheProduto()),
                );
              },
              child: Text(
                'Detalhes do produto',
                style: TextStyle(fontSize: 22, color: Colors.white70),
              ),
            ),
            Text("Valor a enviar: 12",
                style: TextStyle(fontSize: 22, color: Colors.pink[700]))
          ],
        ),
      ),
    );
  }
}
