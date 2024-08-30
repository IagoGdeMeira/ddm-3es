import 'package:gestao_notas/domain/dto/dto_teacher.dart';
import 'package:gestao_notas/domain/cpf.dart';
import 'package:gestao_notas/domain/interface/i_dao_teacher.dart';

class Teacher {
  late dynamic id;
  late String name;
  late String? description;
  late String cpf;
  late String _status = 'A';
  late DTOTeacher dto;
  late IDAOTeacher dao;

  String get status => _status;

  set status(String status) {
    if (status != 'A' || status != 'I')
      throw Exception('Status não pode ser diferente de "A" ou "I".');
  }

  Teacher({required this.dto, required this.dao}) {
    id = dto.id;
    name = dto.name;
    description = dto.description;
    cpf = dto.cpf;
    status = dto.status;
    CPF(cpf);
  }

  DTOTeacher save(DTOTeacher dto) {
    isNameValid();
    return dao.save(dto);
  }

  bool isNameValid() {
    if (name.isEmpty) throw Exception('O nome não pode ser vazio ou nulo.');
    return true;
  }
}
