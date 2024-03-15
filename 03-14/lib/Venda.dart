import 'Cliente.dart';
import 'Fornecedor.dart';

class Venda {
  int id;
  Cliente cliente;
  Fornecedor fornecedor;
  Function calcularComissao;

  Venda({
    required this.id,
    required this.cliente,
    required this.fornecedor,
    required this.calcularComissao
  });
}
