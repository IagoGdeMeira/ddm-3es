import 'Cidade.dart';
import 'Pessoa.dart';

class Cliente implements Pessoa {
  @override
  int id;

  @override
  String nome;

  @override
  Cidade trabalho;

  @override
  Cidade moradia;

  Cliente({
    required this.id,
    required this.nome,
    required this.trabalho,
    required this.moradia
  });
}
