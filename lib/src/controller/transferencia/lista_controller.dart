import 'package:flutter/material.dart';
import 'package:bytebank_app/src/model/transferencia/model.dart';
import 'package:bytebank_app/src/page/transferencia/formulario.dart';

class ListaTransferenciaController {
  //
  Future<TransferenciaModel?> acaoFloatingActionButton(BuildContext context) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const FormularioTransferencia();
        },
      ),
    );
  }
}
