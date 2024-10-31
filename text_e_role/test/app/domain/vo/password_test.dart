import 'package:flutter_test/flutter_test.dart';
import 'package:text_e_role/app/domain/entity/user.dart';
import 'package:text_e_role/app/domain/vo/password.dart';
import 'package:text_e_role/app/service/database/sqlite/dao/dao_user.dart';


void main() {
  group('Password', () {
    group('FR003 - The system must validate the password submitted for an account.', () {
      test('Valid password - it should not throw exceptions.', () {
        expect(() => Password('Valid@Password123').validatePassword(), returnsNormally);
      });

      test('Password cannot be null.', () {
        expect(() => Password(null), throwsException);
      });

      test('Password cannot be empty.', () {
        expect(() => Password(''), throwsException);
      });

      test('Password must have at least 8 characters.', () {
        expect(() => Password('A@1').isPasswordTooShort(), throwsException);
      });

      test('Password must not exceed 30 characters.', () {
        expect(() => Password('${'A'*31}@1').isPasswordTooLong(), throwsException);
      });

      test('Password must contain at least one lowercase character.', () {
        expect(() => Password('VALID@PASSWORD123').doesPasswordHaveLowerCase(), throwsException);
      });

      test('Password must contain at least one uppercase character.', () {
        expect(() => Password('valid@password123').doesPasswordHaveUpperCase(), throwsException);
      });

      test('Password must contain at least one special character.', () {
        expect(() => Password('ValidPassword123').doesPasswordHaveSpecialChar(), throwsException);
      });

      test('Password must contain at least one digit.', () {
        expect(() => Password('Valid@Password').doesPasswordHaveDigit(), throwsException);
      });
    });
  });

  group('User', () {
    group('FR003 - The system must validate the password submitted for an account.', () {
      final domain = User(userDAO: DAOUser());

      test('Setting the password after proper validation.', () {
        expect(() => domain.password = 'Valid@Password123', returnsNormally);
      });
    });
  });
}