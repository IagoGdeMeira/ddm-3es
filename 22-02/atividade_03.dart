void main(List<String> arguments) {
  var disciplina = "Desenvolvimento de Dispositivos Móveis";
  var cargaHoraria = 160.0;
  var professorResponsavel = "Hélio Kamakawa";
  var eAtiva = true;
  var qntdAlunos = 25;

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

  print('''\n
Disciplina: ${disciplina}
Carga Horária: ${cargaHoraria}
Professor Responsável: ${professorResponsavel}
Disciplina está ativa? R: ${eAtiva ? 'Sim' : 'Não'}
Quantidade de alunos: ${qntdAlunos}
  ''');
}
