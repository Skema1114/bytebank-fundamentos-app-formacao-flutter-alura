import 'package:bytebank_fundamentos_app_formacao_flutter_alura/src/controller/FormularioTransferenciasController.dart';
import 'package:bytebank_fundamentos_app_formacao_flutter_alura/src/model/TextFieldTransferenciaDataModel.dart';
import 'package:bytebank_fundamentos_app_formacao_flutter_alura/src/model/TransferenciaFormModel.dart';
import 'package:bytebank_fundamentos_app_formacao_flutter_alura/src/widget/TextFieldFormularioTransferencia.dart';
import 'package:flutter/material.dart';

class FormularioTransferencias extends StatelessWidget {
  final TextEditingController _controladorNumeroConta = TextEditingController();
  final TextEditingController _controladorValor = TextEditingController();
  final FormularioTransferenciasController _controller =
      FormularioTransferenciasController();

  FormularioTransferencias({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nova Transferência'),
      ),
      body: ListView(
        children: [
          TextFieldFormularioTransferencia(
            TransferenciaFormModel(
              controlador: _controladorNumeroConta,
              rotulo: 'Número da conta:',
              dica: '00000',
            ),
            TextFieldTransferenciaDataModel(
              icone: Icons.account_balance_wallet,
              tipoTeclado: TextInputType.number,
            ),
          ),
          TextFieldFormularioTransferencia(
            TransferenciaFormModel(
              controlador: _controladorValor,
              rotulo: 'Valor:',
              dica: '000,00',
            ),
            TextFieldTransferenciaDataModel(
              icone: Icons.monetization_on,
              tipoTeclado: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            child: ElevatedButton(
              child: const Text('Confirmar'),
              onPressed: () => _controller.criarTransferencia(
                  _controladorNumeroConta.text,
                  _controladorValor.text,
                  context),
            ),
          ),
        ],
      ),
    );
  }
}
