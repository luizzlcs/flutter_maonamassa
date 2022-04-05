import 'package:flutter/material.dart';

class DetalheProduto extends StatelessWidget {
  static final detalhe = '/detalhe_produto';

  const DetalheProduto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final param =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

    return Scaffold(
      appBar: AppBar(
        title: Text('DETALHES DO PRODUTO'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '''
Parâmetro recebido
               ${param?['id'] ?? 0}''',
              style: TextStyle(fontSize: 28, color: Colors.orange.shade900),
            ),
          ],
        ),
      ),
    );
  }
}
