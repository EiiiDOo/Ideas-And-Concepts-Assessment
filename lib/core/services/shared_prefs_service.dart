import 'package:ideas_and_concepts_assessment_task/core/services/local_storage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsService implements LocalStorageService {
  late SharedPreferences _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  @override
  Future<void> writeString(String key, String value) async {
    await _prefs.setString(key, value);
  }

  @override
  String? readString(String key) {
    return _prefs.getString(key);
  }

  @override
  Future<void> remove(String key) async {
    await _prefs.remove(key);
  }
}
