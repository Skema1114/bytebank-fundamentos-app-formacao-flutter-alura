import 'package:bytebank_fundamentos_app_formacao_flutter_alura/src/model/TransferenciaModel.dart';
import 'package:flutter/material.dart';

class FormularioTransferencias extends StatelessWidget {
  final TextEditingController _controladorNumeroConta = TextEditingController();
  final TextEditingController _controladorValor = TextEditingController();

  FormularioTransferencias({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nova Transferência'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            child: TextField(
              controller: _controladorNumeroConta,
              style: const TextStyle(fontSize: 24.0),
              decoration: const InputDecoration(
                icon: Icon(
                  Icons.account_balance_wallet,
                ),
                labelText: 'Número da conta:',
                hintText: '000000',
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            child: TextField(
              controller: _controladorValor,
              style: const TextStyle(fontSize: 24),
              decoration: const InputDecoration(
                icon: Icon(
                  Icons.monetization_on,
                ),
                labelText: 'Valor:',
                hintText: '000.00',
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            child: ElevatedButton(
              child: const Text('Confirmar'),
              onPressed: () {
                final int? numeroConta =
                    int.tryParse(_controladorNumeroConta.text);
                final double? valor = double.tryParse(_controladorValor.text);

                if (numeroConta != null && valor != null) {
                  final transferenciaCriada =
                      TransferenciaModel(valor, numeroConta);
                  debugPrint(transferenciaCriada.toString());

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('$transferenciaCriada'),
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
              },
            ),
          ),
        ],
      ),
    );
  }
}
