import 'package:flutter_test/flutter_test.dart';
import 'package:gestao_notas/domain/cpf.dart';

void main() {
  group('Teste de CPF vazio.', () {
    test('CPF completo.', () {
      expect(() => new CPF('203.116.940-80'), returnsNormally);
    });

    test('CPF vazio.', () {
      expect(() => new CPF(''), throwsException);
    });
  });

  group('Teste de CPF com 11 números.', () {
    test('CPF com 11 dígitos', () {
      expect(
          () => new CPF('203.116.940-80').hasElevenNumbers(), returnsNormally);
    });

    test('CPF sem 11 dígitos', () {
      expect(() => new CPF('23.6.940-80').hasElevenNumbers(), throwsException);
      expect(
          () => new CPF('23.11896.940-80').hasElevenNumbers(), throwsException);
    });
  });

  group('Teste para verificar se há números diferentes.', () {
    test('CPF com números iguais.', () {
      expect(new CPF('111.111.111-11').hasDifferentNumbers(), false);
      expect(new CPF('222.222.222-22').hasDifferentNumbers(), false);
      expect(new CPF('333.333.333-33').hasDifferentNumbers(), false);
    });

    test('CPF com números diferentes.', () {
      expect(new CPF('203.116.940-80').hasDifferentNumbers(), true);
      expect(new CPF('946.203.550-46').hasDifferentNumbers(), true);
      expect(new CPF('424.518.890-12').hasDifferentNumbers(), true);
    });

    test('CPF checado não tem o número certo de dígitos.', () {
      expect(() => new CPF('2.11689.9-80').hasDifferentNumbers(), throwsException);
      expect(() => new CPF('94546.203.5950-46').hasDifferentNumbers(), throwsException);
      expect(() => new CPF('424.58.90-12').hasDifferentNumbers(), throwsException);
    });
  });
}
