import 'package:bytebank_fundamentos_app_formacao_flutter_alura/main.dart';
import 'package:bytebank_fundamentos_app_formacao_flutter_alura/src/model/TransferenciaModel.dart';
import 'package:bytebank_fundamentos_app_formacao_flutter_alura/src/widget/ItemTransferencia/ItemTransferencia.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListaTransferencias extends StatelessWidget {
  const ListaTransferencias({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transferências'),
      ),
      body: Column(
        children: [
          ItemTransferencia(TransferenciaModel(300.00, 405020)),
          ItemTransferencia(TransferenciaModel(200.00, 101020)),
          ItemTransferencia(TransferenciaModel(100.00, 202020)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
