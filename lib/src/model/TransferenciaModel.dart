class TransferenciaModel {
  final double valor;
  final int numeroConta;

  TransferenciaModel({required this.valor, required this.numeroConta});

  @override
  String toString() {
    return 'TRANSFERÊNCIA { NUMERO-CONTA: $numeroConta, VALOR: $valor }';
  }
}
