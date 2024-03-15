import 'Cidade.dart';
import 'Pessoa.dart';

class Fornecedor implements Pessoa {
  @override
  int id;

  @override
  String nome;

  @override
  Cidade trabalho;

  @override
  Cidade moradia;

  Fornecedor({
    required this.id,
    required this.nome,
    required this.trabalho,
    required this.moradia
  });
}
