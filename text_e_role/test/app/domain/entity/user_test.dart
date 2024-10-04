import 'package:flutter_test/flutter_test.dart';
import 'package:text_e_role/app/domain/entity/user.dart';
import 'package:text_e_role/app/domain/interface/idao_user.dart';

void main() {
  group('User', () {
    group(
        'RF002 - The system must validate the e-mail addresses submitted in the account creation.',
        () {
      const String validEmail = 'example@domain.com';
      const String invalidEmail = 'example';
      late IDAOUser dao;

      final domain = User(userDAO: dao);

      test('Valid e-mail address format.', () {
        expect(() => domain.isEmailValid(validEmail), returnsNormally);
      });
    });
  });
}
