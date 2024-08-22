import 'Cidade.dart';
import 'Cliente.dart';
import 'Estado.dart';
import 'Venda.dart';

var estado_001 = Estado(
  id: 1,
  nome: 'Paraná',
  sigla: 'PR'
);

var cidade_001 = Cidade(id: 1,
  nome: 'Paranavaí',
  estado: estado_001
);

void main(List<String> args) {}
