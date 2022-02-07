import 'package:flutter/material.dart';
import 'package:bytebank_app/src/model/transferencia/model.dart';

class FormularioTransferenciaController {
  //
  void criarTransferencia(
      String numeroContaParam, String valorParam, BuildContext context) {
    final int? numeroConta = int.tryParse(numeroContaParam);
    final double? valor = double.tryParse(valorParam);

    if (numeroConta != null && valor != null) {
      final transferenciaCriada = TransferenciaModel(
        valor: valor,
        numeroConta: numeroConta,
      );

      Navigator.pop(context, transferenciaCriada);

      _mensagemToast(context, transferenciaCriada.toString());
    }
  }

  void _mensagemToast(BuildContext context, String mensagem) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(mensagem),
        ),
        duration: const Duration(milliseconds: 2000),
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
    );
  }
}
