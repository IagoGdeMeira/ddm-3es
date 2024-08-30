import 'package:text_e_role/domain/dto/dto_user.dart';


abstract class IDAOUser {
  DTOUser save(DTOUser dto);
}