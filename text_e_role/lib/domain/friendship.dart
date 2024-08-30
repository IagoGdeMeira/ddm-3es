import 'package:text_e_role/domain/user.dart';

class Friendship {
  String status = 'I';
  late User userOne;
  late User userTwo;

  bool isStatusValid() {
    if (status != 'A' || status != 'I')
      throw Exception('ERROR: Invalid status value for friendship');

    return true;
  }

  
}