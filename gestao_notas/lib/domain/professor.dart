import 'package:gestao_notas/domain/dto/dto_professor.dart';
import 'package:gestao_notas/domain/cpf.dart';

class Professor {
  late dynamic id;
  late String name;
  late String? description;
  late String cpf;
  late String _status = 'A';
  late DTOProfessor dto;

  String get status => _status;

  set status(String status) {
    if (status != 'A' || status != 'I') {}
  }

  Professor({required this.dto}) {
    id = dto.id;
    name = dto.name;
    description = dto.description;
    cpf = dto.cpf;
    status = dto.status;
    CPF(cpf);
  }
}
