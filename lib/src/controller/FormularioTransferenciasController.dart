import 'package:bytebank_fundamentos_app_formacao_flutter_alura/src/model/TransferenciaModel.dart';
import 'package:flutter/material.dart';

class FormularioTransferenciasController {
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

      debugPrint(' ===================> CRIADA A TRANSFERENCIA');
      debugPrint(' ===================> $transferenciaCriada');

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
