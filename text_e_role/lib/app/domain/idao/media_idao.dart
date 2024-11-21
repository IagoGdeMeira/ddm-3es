import 'package:text_e_role/app/domain/dto/media_dto.dart';


abstract class MediaIDAO {
  Future<MediaDTO> save(MediaDTO dto);
  Future<bool> updateStatus(int id);
  Future<MediaDTO> searchById(int id);
  Future<List<MediaDTO>> searchActiveByMessage(int messageId);
}