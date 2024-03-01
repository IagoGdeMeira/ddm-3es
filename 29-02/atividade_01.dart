import 'dart:io';

void main() {
  var notas = armazenarNotas(2);

  var media = calcularMedia(notas);
  eAprovado(media);
}

void eAprovado(double media) {
  if (media >= 6)
    print('O aluno está aprovado.');
  else
    print('O aluno está reprovado.');
}

List<double> armazenarNotas(int qntNotas) {
  var notas = <double>[];
  var i = 0;

  while (i < qntNotas) {
    var entradaNota = informarNota(i);

    if (validarNota(entradaNota)) {
      notas.add(entradaNota);
      i++;
    }
  }

  return notas;
}

double calcularMedia(List<double> notas) {
  var media = 0.0;

  for (int i = 0; i < notas.length; i++) media += notas[i];

  return media / notas.length;
}

double informarNota(int i) {
  print('Informe a ${i + 1}ª nota: ');

  var entradaNota = stdin.readLineSync() ?? '-1.0';
  return double.parse(entradaNota);
}

bool validarNota(double nota) {
  if (nota >= 0 && nota <= 10) return true;

  print('Essa nota não é válida. Informe uma nota entre 0 e 10.');
  return false;
}
