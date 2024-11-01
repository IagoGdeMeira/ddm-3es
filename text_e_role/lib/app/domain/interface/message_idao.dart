import 'package:text_e_role/app/domain/dto/media_dto.dart';


abstract class UserIDAO {
  Future<MediaDTO> save(MediaDTO dto);
  Future<MediaDTO> update(MediaDTO dto);
  Future<bool> updateStatus(int id);
  Future<MediaDTO> searchById(int id);
  Future<List<MediaDTO>> searchAll();
}
