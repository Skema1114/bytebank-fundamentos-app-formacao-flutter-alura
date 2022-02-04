import 'package:bytebank_fundamentos_app_formacao_flutter_alura/src/controller/ListaTrasferenciasController.dart';
import 'package:bytebank_fundamentos_app_formacao_flutter_alura/src/model/ItemTransferenciaDataModel.dart';
import 'package:bytebank_fundamentos_app_formacao_flutter_alura/src/model/TransferenciaModel.dart';
import 'package:bytebank_fundamentos_app_formacao_flutter_alura/src/widget/ItemTransferencia.dart';
import 'package:flutter/material.dart';

class ListaTransferencias extends StatefulWidget {
  final List<TransferenciaModel> _transferencias = [];

  ListaTransferencias({Key? key}) : super(key: key);

  @override
  State<ListaTransferencias> createState() => _ListaTransferenciasState();
}

class _ListaTransferenciasState extends State<ListaTransferencias> {
  final ListaTrasferenciasController _controller =
      ListaTrasferenciasController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transferências'),
      ),
      body: ListView.builder(
        itemCount: widget._transferencias.length,
        itemBuilder: (context, indice) {
          debugPrint("MONTOU O ITEM");

          return ItemTransferencia(
            TransferenciaModel(
              valor: widget._transferencias[indice].valor,
              numeroConta: widget._transferencias[indice].numeroConta,
            ),
            const ItemTransferenciaDataModel(
              moeda: 'R\$',
              icone: Icons.monetization_on,
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => _controller.acaoFloatingActionButton(context).then(
          (transferenciaRecebida) {
            if (transferenciaRecebida != null) {
              debugPrint('TRANSFERENCIA RECEBIDA NÃO É NULA');
              widget._transferencias.add(transferenciaRecebida);
            }
            debugPrint(' ===================> CHEGOU NO THEN DO FUTURE');
            debugPrint(' ===================> $transferenciaRecebida');
          },
        ),
      ),
    );
  }
}
