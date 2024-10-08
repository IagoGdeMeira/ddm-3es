import 'package:flutter_test/flutter_test.dart';
import 'package:text_e_role/app/domain/entity/user.dart';
import 'package:text_e_role/app/domain/interface/i_dao_user.dart';
import 'package:text_e_role/app/service/database/sqlite/dao/dao_user.dart';


void main() {
  group('User', () {
    group('FR002 - The system must validate the e-mail addresses submitted for the account.', () {
      IDAOUser dao = DAOUser();
      final domain = User(userDAO: dao);

      test('Valid e-mail address.', () {
        expect(() => domain.email = 'example@domain.com', returnsNormally);
      });

      test('E-mail addresses cannot be null.', () {
        expect(() => domain.email = null, throwsException);
      });

      test('E-mail addresses cannot be empty.', () {
        expect(() => domain.email = '', throwsException);
      });

      test('Invalid e-mail address format.', () {
        expect(() => domain.email = 'example', throwsException);
      });
    });
  });
}