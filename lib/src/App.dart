import 'package:bytebank_fundamentos_app_formacao_flutter_alura/src/page/ListaTrasferencias.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListaTransferencias(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
