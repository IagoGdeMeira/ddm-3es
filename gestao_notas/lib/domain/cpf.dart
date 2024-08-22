class CPF {
  late List<int> cpfNumbers;

  CPF(String cpf) {
    isEmpty(cpf);

    cpf = cpf.replaceAll('.', '');
    cpf = cpf.replaceAll('-', '');
    cpfNumbers = cpf.split('').map((int.parse)).toList();
    
    hasElevenNumbers();
    hasDifferentNumbers();
    hasCorrectDigits();
  }

  bool hasElevenNumbers() {
    if (cpfNumbers.length != 11)
      throw Exception('O CPF deve possuir 11 números.');

    return true;
  }

  bool hasDifferentNumbers() {
    var i = 0;
    var foundDifference = false;

    if (hasElevenNumbers()) {
      do {
        foundDifference = cpfNumbers[i] != cpfNumbers[i + 1];
        i++;
      } while (foundDifference == false && i < 8);
    }

    return foundDifference;
  }

  bool hasCorrectDigits() {
    if (calculateDigits(8) != cpfNumbers[9])
      throw Exception('O primeiro dígito verificador é inválido.');
    if (calculateDigits(9) != cpfNumbers[10])
      throw Exception('O segundo dígito verificador é inválido.');

    return true;
  }

  int calculateDigits(int i) {
    var sum = 0;

    for (var multiplier = 9; multiplier >= 0; multiplier--, i--) {
      sum += cpfNumbers[i] * multiplier;
    }

    if (sum % 11 == 10) return 0;
    return sum % 11;
  }

  bool isUnique() {
    return true;
  }

  isEmpty(String cpf) {
    if (cpf.isEmpty)
      throw Exception('ERRO: O valor do CPF não pode ser vazio.');
  }
}
