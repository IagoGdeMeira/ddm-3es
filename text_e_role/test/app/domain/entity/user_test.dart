import 'package:flutter_test/flutter_test.dart';
import 'package:text_e_role/app/domain/entity/user.dart';
import 'package:text_e_role/app/service/database/sqlite/dao/user_dao.dart';


void main() {
  group('User', () {
    group('FR002 - The system must validate the e-mail addresses submitted for the account.', () {
      final domain = User(userDAO: UserDAO());

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

    group('Username', () {
      final domain = User(userDAO: UserDAO());

      group('Username', () {
        test('Valid username.', () {
          expect(() => domain.username = 'Username', returnsNormally);
        });

        test('Usernames cannot be null.', () {
          expect(() => domain.username = null, throwsException);
        });

        test('Usernames addresses cannot be empty.', () {
          expect(() => domain.username = '', throwsException);
        });

        test('Invalid username.', () {
          expect(() => domain.username = 'User@name~', throwsException);
        });
      });

      group('Display Name', () {
        test('Valid display name.', () {
          expect(() => domain.displayName = 'DisplayName', returnsNormally);
        });

        test('Display names cannot be null.', () {
          expect(() => domain.displayName = null, throwsException);
        });

        test('Display names can be empty.', () {
          expect(() => domain.displayName = '', returnsNormally);
        });

        test('Invalid display name.', () {
          expect(() => domain.displayName = 'User@name~', throwsException);
        });
      });
    });
  });
}