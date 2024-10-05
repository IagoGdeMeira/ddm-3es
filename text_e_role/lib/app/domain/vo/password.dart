class Password{
  late String passwordToValidate;

  Password(String? password) {
    isPasswordReadyToValidate(password);
    passwordToValidate = password.toString();
  }

  validatePassword() {
    isPasswordTooShort();
    isPasswordTooLong();
    doesPasswordHaveLowerCase();
    doesPasswordHaveUpperCase();
    doesPasswordHaveSpecialChar();
    doesPasswordHaveDigit();
  }

  bool isPasswordReadyToValidate(String? password) {
    if (password == null) throw Exception('Password cannot be null.');
    if (password.isEmpty) throw Exception('Password cannot be empty.');

    return true;
  }

  bool isPasswordTooShort() {
    int minLimit = 8;
    if(passwordToValidate.length < minLimit) throw Exception('The password must have at least ${minLimit} characters.');
    
    return false;
  }

  bool isPasswordTooLong() {
    int maxLimit = 30;
    if(passwordToValidate.length > maxLimit) throw Exception('The password must not have more than ${maxLimit} characters.');

    return false;
  }

  bool doesPasswordHaveLowerCase() {
    RegExp hasLowerCase = RegExp(r'[a-z]');
    if(!hasLowerCase.hasMatch(passwordToValidate)) throw Exception('The password must have at least one lower case character');

    return true;
  }

  bool doesPasswordHaveUpperCase() {
    RegExp hasUpperCase = RegExp(r'[A-Z]');
    if(!hasUpperCase.hasMatch(passwordToValidate)) throw Exception('The password must have at least one upper case character');

    return true;
  }

  bool doesPasswordHaveSpecialChar() {
    RegExp hasSpecialChars = RegExp(r'[!@#$%^&*(),.?":{}|<>]');
    if(!hasSpecialChars.hasMatch(passwordToValidate)) throw Exception('The password must have at least one special character.');

    return true;
  }

  bool doesPasswordHaveDigit() {
    RegExp hasDigit = RegExp(r'[0-9]');
    if(!hasDigit.hasMatch(passwordToValidate)) throw Exception('The password must have at least one digit.');
  
    return true;
  }
}