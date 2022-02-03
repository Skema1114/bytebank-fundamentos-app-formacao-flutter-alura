import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: ListaTransferencias(),
          appBar: AppBar(
            title: const Text('Transferências'),
          ),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {},
          ),
        ),
      ),
    );

class ListaTransferencias extends StatelessWidget {
  const ListaTransferencias({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemTransferencia(Transferencia(300.00, 405020)),
        ItemTransferencia(Transferencia(200.00, 101020)),
        ItemTransferencia(Transferencia(100.00, 202020)),
      ],
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;
  final ItemTransferenciaData _itemTransferenciaData =
      ItemTransferenciaData('R\$', Icons.monetization_on);

  ItemTransferencia(this._transferencia, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(_itemTransferenciaData._icone),
        title: Text(
          _itemTransferenciaData._moeda +
              ' ' +
              _transferencia._valor.toString(),
        ),
        subtitle: Text(
          _transferencia._numeroConta.toString(),
        ),
      ),
    );
  }
}

class Transferencia {
  final double _valor;
  final int _numeroConta;

  Transferencia(this._valor, this._numeroConta);
}

class ItemTransferenciaData {
  final String _moeda;
  final IconData _icone;

  ItemTransferenciaData(this._moeda, this._icone);
}
