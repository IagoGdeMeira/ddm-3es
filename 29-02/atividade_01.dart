import 'dart:io';

void main() {
  var notas = armazenarNotas(2);

  apresentarNotas(notas);
}

void apresentarNotas(List<double> notas) {
  for (int i = 0; i < notas.length; i++) print('NOTA ${i + 1} $notas[i]');
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
