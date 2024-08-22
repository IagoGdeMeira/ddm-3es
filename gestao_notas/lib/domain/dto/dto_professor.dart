class DTOProfessor {
  late dynamic id;
  late String name;
  late String? description;
  late String cpf;
  late String status = 'A';

  DTOProfessor({
    this.id,
    required this.name,
    this.description,
    required this.cpf,
    this.status = 'A'
  });
}
