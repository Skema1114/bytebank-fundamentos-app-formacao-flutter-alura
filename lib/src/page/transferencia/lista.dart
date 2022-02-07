import 'package:flutter/material.dart';
import 'package:bytebank_app/src/utils/strings.dart';
import 'package:bytebank_app/src/model/transferencia/model.dart';
import 'package:bytebank_app/src/widget/transferencia/item.dart';
import 'package:bytebank_app/src/model/transferencia/item_data_model.dart';
import 'package:bytebank_app/src/controller/transferencia/lista_controller.dart';

class ListaTransferencia extends StatefulWidget {
  final List<TransferenciaModel> _transferencias = [];

  ListaTransferencia({Key? key}) : super(key: key);

  @override
  State<ListaTransferencia> createState() => _ListaTransferenciaState();
}

class _ListaTransferenciaState extends State<ListaTransferencia> {
  final ListaTransferenciaController _controller =
      ListaTransferenciaController();
  final Strings _strings = Strings();
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_strings.transferenciasListaTransferencia),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Switch(
              value: isDarkMode,
              onChanged: (value) {
                setState(() {
                  isDarkMode = value;
                  //changeTheme(value);
                });
              },
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: widget._transferencias.length,
        itemBuilder: (context, indice) {
          return ItemTransferencia(
            TransferenciaModel(
              valor: widget._transferencias[indice].valor,
              numeroConta: widget._transferencias[indice].numeroConta,
            ),
            ItemTransferenciaDataModel(
              moeda: _strings.moedaListaTransferencia,
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
              setState(() {
                widget._transferencias.add(transferenciaRecebida);
              });
            }
          },
        ),
      ),
    );
  }
}
