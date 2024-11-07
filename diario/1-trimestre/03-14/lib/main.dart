import 'Cidade.dart';
import 'Estado.dart';

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
