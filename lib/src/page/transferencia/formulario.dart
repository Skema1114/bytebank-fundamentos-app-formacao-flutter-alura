import 'package:flutter/material.dart';
import 'package:bytebank_app/src/utils/strings.dart';
import 'package:bytebank_app/src/model/transferencia/form_model.dart';
import 'package:bytebank_app/src/model/transferencia/text_field_data_model.dart';
import 'package:bytebank_app/src/widget/transferencia/text_field_formulario.dart';
import 'package:bytebank_app/src/controller/transferencia/formulario_controller.dart';

class FormularioTransferencia extends StatefulWidget {
  const FormularioTransferencia({Key? key}) : super(key: key);

  @override
  State<FormularioTransferencia> createState() =>
      _FormularioTransferenciaState();
}

class _FormularioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _controladorNumeroConta = TextEditingController();

  final TextEditingController _controladorValor = TextEditingController();

  final FormularioTransferenciaController _controller =
      FormularioTransferenciaController();
  final Strings _strings = Strings();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_strings.novaTransferenciaFormularioTransferencia),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFieldFormularioTransferencia(
              TransferenciaFormModel(
                controlador: _controladorNumeroConta,
                rotulo: _strings.numeroContaFormularioTransferencia,
                dica: _strings.dicaNumeroContaFormularioTransferencia,
              ),
              TextFieldTransferenciaDataModel(
                icone: Icons.account_balance_wallet,
                tipoTeclado: TextInputType.number,
              ),
            ),
            TextFieldFormularioTransferencia(
              TransferenciaFormModel(
                controlador: _controladorValor,
                rotulo: _strings.valorFormularioTransferencia,
                dica: _strings.dicaValorFormularioTransferencia,
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
                child: Text(_strings.confirmarFormularioTransferencia),
                onPressed: () => _controller.criarTransferencia(
                    _controladorNumeroConta.text,
                    _controladorValor.text,
                    context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
