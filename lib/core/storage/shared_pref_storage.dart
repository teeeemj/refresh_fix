import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class SharedPrefStorage {
  // Private constructor for singleton pattern
  SharedPrefStorage._privateConstructor();

  // Single instance of SharedPrefStorage
  static final SharedPrefStorage instance =
      SharedPrefStorage._privateConstructor();

  SharedPreferences? _prefs;

  /// Initialize SharedPreferences instance
  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  /// Check if the key exists
  bool containsKey(String key) {
    if (_prefs == null) {
      throw Exception("StorageService not initialized. Call init() first.");
    }
    return _prefs!.containsKey(key);
  }

  /// Remove a key
  Future<bool> remove(String key) async {
    if (_prefs == null) {
      throw Exception("StorageService not initialized. Call init() first.");
    }
    return await _prefs!.remove(key);
  }

  /// Clear all keys
  Future<bool> clear() async {
    if (_prefs == null) {
      throw Exception("StorageService not initialized. Call init() first.");
    }
    return await _prefs!.clear();
  }

  /// Set a string value
  Future<bool> setString(String key, String value) async {
    if (_prefs == null) {
      throw Exception("StorageService not initialized. Call init() first.");
    }
    return await _prefs!.setString(key, value);
  }

  /// Get a string value
  String? getString(String key) {
    if (_prefs == null) {
      throw Exception("StorageService not initialized. Call init() first.");
    }
    return _prefs!.getString(key);
  }

  /// Set an integer value
  Future<bool> setInt(String key, int value) async {
    if (_prefs == null) {
      throw Exception("StorageService not initialized. Call init() first.");
    }
    return await _prefs!.setInt(key, value);
  }

  /// Get an integer value
  int? getInt(String key) {
    if (_prefs == null) {
      throw Exception("StorageService not initialized. Call init() first.");
    }
    return _prefs!.getInt(key);
  }

  /// Set a boolean value
  Future<bool> setBool(String key, bool value) async {
    if (_prefs == null) {
      throw Exception("StorageService not initialized. Call init() first.");
    }
    return await _prefs!.setBool(key, value);
  }

  /// Get a boolean value
  bool? getBool(String key) {
    if (_prefs == null) {
      throw Exception("StorageService not initialized. Call init() first.");
    }
    return _prefs!.getBool(key);
  }

  /// Set a double value
  Future<bool> setDouble(String key, double value) async {
    if (_prefs == null) {
      throw Exception("StorageService not initialized. Call init() first.");
    }
    return await _prefs!.setDouble(key, value);
  }

  /// Get a double value
  double? getDouble(String key) {
    if (_prefs == null) {
      throw Exception("StorageService not initialized. Call init() first.");
    }
    return _prefs!.getDouble(key);
  }

  /// Set a list of strings
  Future<bool> setStringList(String key, List<String> value) async {
    if (_prefs == null) {
      throw Exception("StorageService not initialized. Call init() first.");
    }
    return await _prefs!.setStringList(key, value);
  }

  /// Get a list of strings
  List<String>? getStringList(String key) {
    if (_prefs == null) {
      throw Exception("StorageService not initialized. Call init() first.");
    }
    return _prefs!.getStringList(key);
  }

  /// Set a custom object by encoding it to JSON
  Future<bool> setObject<T>(String key, T value) async {
    if (_prefs == null) {
      throw Exception("StorageService not initialized. Call init() first.");
    }
    String jsonString = jsonEncode(value);
    return await _prefs!.setString(key, jsonString);
  }

  /// Get a custom object by decoding JSON
  T? getObject<T>(String key, T Function(Map<String, dynamic>) fromJson) {
    if (_prefs == null) {
      throw Exception("StorageService not initialized. Call init() first.");
    }
    String? jsonString = _prefs!.getString(key);
    if (jsonString == null) return null;
    Map<String, dynamic> jsonMap = jsonDecode(jsonString);
    return fromJson(jsonMap);
  }
}
