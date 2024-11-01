abstract class ChatIDAO<T> {
  Future<T> save(T dto);
  Future<T> update(T dto);
  Future<void> updateStatus(int id);
  Future<T> searchById(int id);
  Future<List<T>> searchAll();
}