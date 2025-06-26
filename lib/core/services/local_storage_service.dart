abstract class LocalStorageService {
  Future<void> write(String key, String value);
  String? read(String key);
  Future<void> remove(String key);
}
