import 'package:bytebank_fundamentos_app_formacao_flutter_alura/src/model/TransferenciaModel.dart';
import 'package:bytebank_fundamentos_app_formacao_flutter_alura/src/page/FormularioTransferencias.dart';
import 'package:flutter/material.dart';

class ListaTrasferenciasController {
  //
  Future<TransferenciaModel?> acaoFloatingActionButton(BuildContext context) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return FormularioTransferencias();
        },
      ),
    );
  }
}
