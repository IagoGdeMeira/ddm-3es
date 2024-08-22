void main(List<String> arguments) {
  String disciplina = "Desenvolvimento de Dispositivos Móveis";
  double cargaHoraria = 160;
  String professorResponsavel = "Hélio Kamakawa";
  bool eAtiva = true;
  int qntdAlunos = 25;

  print('Disciplina: ' +
      disciplina +
      '\nCarga Horária: ' +
      cargaHoraria.toString() +
      '\nProfessor Responsável: ' +
      professorResponsavel +
      '\nDisciplina está ativa? R: ' +
      (eAtiva == true ? 'Sim' : 'Não') +
      '\nQuantidade de alunos: ' +
      qntdAlunos.toString());

  print('''\n
Disciplina: $disciplina
Carga Horária: $cargaHoraria
Professor Responsável: $professorResponsavel
Disciplina está ativa? R: $eAtiva
Quantidade de alunos: $qntdAlunos
  ''');

  print('''
Disciplina: ${disciplina}
Carga Horária: ${cargaHoraria}
Professor Responsável: ${professorResponsavel}
Disciplina está ativa? R: ${eAtiva ? 'Sim' : 'Não'}
Quantidade de alunos: ${qntdAlunos}
  ''');
}
