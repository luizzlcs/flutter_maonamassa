import 'package:flutter/material.dart';
import 'package:flutter_fundamentos/imagens/imagens.dart';
import 'package:flutter_fundamentos/navegacao/home_page.dart' as navegacao;
import 'package:flutter_fundamentos/navegacao/page1.dart';
import 'package:flutter_fundamentos/navegacao/page2.dart';
import 'package:flutter_fundamentos/navegacao/page3.dart';
import 'package:flutter_fundamentos/navegacao/page4.dart';
import 'package:flutter_fundamentos/rotas_com_parametros/detalhe_produto.dart';
import 'package:flutter_fundamentos/rotas_com_parametros/produto.dart';

//import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (_) => navegacao.HomePage(),
        '/page1': (_) => Page1(),
        Page2.pagina2: (_) => Page2(),
        '/page3': (_) => Page3(),
        '/page4': (_) => Page4(),
        Produto.produto: (_) => Produto(),
        DetalheProduto.detalhe: (_) => DetalheProduto(),
      },
    );
  }
}
