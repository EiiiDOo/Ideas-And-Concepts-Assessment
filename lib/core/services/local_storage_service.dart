abstract class LocalStorageService {
  Future<void> writeString(String key, String value);
  String? readString(String key);
  Future<void> remove(String key);
}
