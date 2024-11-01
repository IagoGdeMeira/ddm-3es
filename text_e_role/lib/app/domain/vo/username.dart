class Password{
  late String passwordToValidate;

  Password(String? username) {
    isUsernameReadyToValidate(username);
    passwordToValidate = username.toString();
  }

  validatePassword() {
    doesUsernameHaveLowerCase();
    doesUsernameHaveUpperCase();
    doesUsernameHaveSpecialChar();
    doesUsernameHaveDigit();
  }

  bool isUsernameReadyToValidate(String? username) {
    if (username == null) throw Exception('Password cannot be null.');
    if (username.isEmpty) throw Exception('Password cannot be empty.');

    return true;
  }

  bool doesUsernameHaveLowerCase() {
    RegExp hasLowerCase = RegExp(r'[a-z]');
    if(!hasLowerCase.hasMatch(passwordToValidate)) throw Exception('The username must have at least one lower case character');

    return true;
  }

  bool doesUsernameHaveUpperCase() {
    RegExp hasUpperCase = RegExp(r'[A-Z]');
    if(!hasUpperCase.hasMatch(passwordToValidate)) throw Exception('The username must have at least one upper case character');

    return true;
  }

  bool doesUsernameHaveSpecialChar() {
    RegExp hasSpecialChars = RegExp(r'[!@#$%^&*(),.?":{}|<>]');
    if(!hasSpecialChars.hasMatch(passwordToValidate)) throw Exception('The username must have at least one special character.');

    return true;
  }

  bool doesUsernameHaveDigit() {
    RegExp hasDigit = RegExp(r'[0-9]');
    if(!hasDigit.hasMatch(passwordToValidate)) throw Exception('The username must have at least one digit.');
  
    return true;
  }
}