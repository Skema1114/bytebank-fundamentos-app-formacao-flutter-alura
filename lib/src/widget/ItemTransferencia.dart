import 'package:bytebank_fundamentos_app_formacao_flutter_alura/src/model/ItemTransferenciaDataModel.dart';
import 'package:bytebank_fundamentos_app_formacao_flutter_alura/src/model/TransferenciaModel.dart';
import 'package:flutter/material.dart';

class ItemTransferencia extends StatelessWidget {
  final TransferenciaModel _transferencia;
  final ItemTransferenciaDataModel _itemTransferenciaData;

  const ItemTransferencia(this._transferencia, this._itemTransferenciaData,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(_itemTransferenciaData.icone),
        title: Text(
          _itemTransferenciaData.moeda + ' ' + _transferencia.valor.toString(),
        ),
        subtitle: Text(
          _transferencia.numeroConta.toString(),
        ),
      ),
    );
  }
}
