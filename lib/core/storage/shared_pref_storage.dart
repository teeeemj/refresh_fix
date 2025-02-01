import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class SharedPrefStorage {
  static final SharedPrefStorage _instance =
      SharedPrefStorage._privateConstructor();

  SharedPrefStorage._privateConstructor();

  factory SharedPrefStorage() {
    return _instance;
  }

  SharedPreferences? _prefs;

  /// Initialize SharedPreferences instance
  Future<void> init() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  bool get isInitialized => _prefs != null;

  /// Get a string value
  Future<String?> getString(String key) async {
    await _ensureInitialized();
    return _prefs!.getString(key);
  }

  /// Set a string value
  Future<bool> setString(String key, String value) async {
    await _ensureInitialized();
    return await _prefs!.setString(key, value);
  }

  /// Check if the key exists
  Future<bool> containsKey(String key) async {
    await _ensureInitialized();
    return _prefs!.containsKey(key);
  }

  /// Remove a key
  Future<bool> remove(String key) async {
    await _ensureInitialized();
    return await _prefs!.remove(key);
  }

  /// Clear all keys
  Future<bool> clear() async {
    await _ensureInitialized();
    return await _prefs!.clear();
  }

  /// Set an integer value
  Future<bool> setInt(String key, int value) async {
    await _ensureInitialized();
    return await _prefs!.setInt(key, value);
  }

  /// Get an integer value
  Future<int?> getInt(String key) async {
    await _ensureInitialized();
    return _prefs!.getInt(key);
  }

  /// Set a boolean value
  Future<bool> setBool(String key, bool value) async {
    await _ensureInitialized();
    return await _prefs!.setBool(key, value);
  }

  /// Get a boolean value
  Future<bool?> getBool(String key) async {
    await _ensureInitialized();
    return _prefs!.getBool(key);
  }

  /// Set a double value
  Future<bool> setDouble(String key, double value) async {
    await _ensureInitialized();
    return await _prefs!.setDouble(key, value);
  }

  /// Get a double value
  Future<double?> getDouble(String key) async {
    await _ensureInitialized();
    return _prefs!.getDouble(key);
  }

  /// Set a list of strings
  Future<bool> setStringList(String key, List<String> value) async {
    await _ensureInitialized();
    return await _prefs!.setStringList(key, value);
  }

  /// Get a list of strings
  Future<List<String>?> getStringList(String key) async {
    await _ensureInitialized();
    return _prefs!.getStringList(key);
  }

  /// Set a custom object by encoding it to JSON
  Future<bool> setObject<T>(String key, T value) async {
    await _ensureInitialized();
    String jsonString = jsonEncode(value);
    return await _prefs!.setString(key, jsonString);
  }

  /// Get a custom object by decoding JSON safely
  Future<T?> getObject<T>(
      String key, T Function(Map<String, dynamic>) fromJson) async {
    await _ensureInitialized();
    try {
      String? jsonString = _prefs!.getString(key);
      if (jsonString == null) return null;
      Map<String, dynamic> jsonMap = jsonDecode(jsonString);
      return fromJson(jsonMap);
    } catch (e) {
      return null;
    }
  }

  /// Ensures SharedPreferences is initialized before use
  Future<void> _ensureInitialized() async {
    if (_prefs == null) {
      await init();
    }
  }

  static Future<SharedPrefStorage> getInstance() async {
    await _instance.init();
    return _instance;
  }
}
