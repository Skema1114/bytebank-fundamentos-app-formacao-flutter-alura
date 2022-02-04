import 'package:bytebank_fundamentos_app_formacao_flutter_alura/src/model/TextFieldTransferenciaDataModel.dart';
import 'package:bytebank_fundamentos_app_formacao_flutter_alura/src/model/TransferenciaFormModel.dart';
import 'package:flutter/material.dart';

class TextFieldFormularioTransferencia extends StatelessWidget {
  final TransferenciaFormModel _transferencia;
  final TextFieldTransferenciaDataModel _textFieldTransferenciaDataModel;

  const TextFieldFormularioTransferencia(
      this._transferencia, this._textFieldTransferenciaDataModel,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      child: TextField(
        controller: _transferencia.controlador,
        style: const TextStyle(fontSize: 24.0),
        decoration: InputDecoration(
          icon: _textFieldTransferenciaDataModel.icone != null
              ? Icon(_textFieldTransferenciaDataModel.icone)
              : null,
          labelText: _transferencia.rotulo,
          hintText: _transferencia.dica,
        ),
        keyboardType: _textFieldTransferenciaDataModel.tipoTeclado,
      ),
    );
  }
}
