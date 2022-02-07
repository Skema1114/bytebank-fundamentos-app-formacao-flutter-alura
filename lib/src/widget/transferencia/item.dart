import 'package:flutter/material.dart';
import 'package:bytebank_app/src/utils/strings.dart';
import 'package:bytebank_app/src/model/transferencia/model.dart';
import 'package:bytebank_app/src/model/transferencia/item_data_model.dart';

class ItemTransferencia extends StatelessWidget {
  final TransferenciaModel _transferencia;
  final ItemTransferenciaDataModel _itemTransferenciaData;
  final Strings _strings = Strings();

  ItemTransferencia(this._transferencia, this._itemTransferenciaData,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(_itemTransferenciaData.icone),
        title: Text(
          _strings.valorItemTransferencia +
              _itemTransferenciaData.moeda +
              ' ' +
              _transferencia.valor.toString(),
        ),
        subtitle: Text(
          _strings.contaItemTransferencia +
              _transferencia.numeroConta.toString(),
        ),
      ),
    );
  }
}
