import 'dart:io';

void main() {
  print('ATIVIDADE 1\n');
  var notas = coletarNotas(2);

  for (int i = 0; i < notas.length; i++) print('${i + 1}ª Nota: $notas[0]');
}

List<double> coletarNotas(int qntNotas) {
  var notas = <double>[];
  for (int i = 0; i < qntNotas; i++) {
    print('Informe a ${i + 1}ª nota: ');
    notas[i] = (stdin.readLineSync()) as double;
  }

  return notas;
}

bool validarNota() {
  return true;
}
