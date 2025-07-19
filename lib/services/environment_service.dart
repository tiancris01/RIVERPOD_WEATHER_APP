import 'package:flutter_dotenv/flutter_dotenv.dart';

/// Singleton service to manage environment variables
/// Provides a centralized way to access configuration values from .env files
class EnvironmentService {
  static EnvironmentService? _instance;
  static EnvironmentService get instance =>
      _instance ??= EnvironmentService._();

  EnvironmentService._();

  /// Initialize the environment service by loading the .env file
  static Future<void> initialize({required String envFilePath}) async {
    await dotenv.load(fileName: envFilePath);
  }

  // API Configuration
  String get apiKey => dotenv.env['APPID'] ?? '';
  String get apiHost =>
      dotenv.env['WEATHER_API_BASE_URL'] ?? 'api.openweathermap.org';

  // API Settings
  String get units => dotenv.env['UNITS'] ?? 'metric';
  String get limit => dotenv.env['LIMIT'] ?? '1';

  // App Configuration
  String get appName => dotenv.env['APP_NAME'] ?? 'Weather App';
  String get appVersion => dotenv.env['APP_VERSION'] ?? '1.0.0';

  // Debug Configuration
  bool get isDebugMode => dotenv.env['DEBUG_MODE']?.toLowerCase() == 'true';
  bool get enableLogging =>
      dotenv.env['ENABLE_LOGGING']?.toLowerCase() == 'true';

  // Network Configuration
  int get connectionTimeout =>
      int.tryParse(dotenv.env['CONNECTION_TIMEOUT'] ?? '') ?? 30000;
  int get receiveTimeout =>
      int.tryParse(dotenv.env['RECEIVE_TIMEOUT'] ?? '') ?? 30000;

  /// Get a custom environment variable
  String getEnv(String key, {String defaultValue = ''}) {
    return dotenv.env[key] ?? defaultValue;
  }

  /// Check if an environment variable exists
  bool hasEnv(String key) {
    return dotenv.env.containsKey(key);
  }

  /// Get all environment variables (for debugging purposes)
  Map<String, String> getAllEnv() {
    return Map<String, String>.from(dotenv.env);
  }
}
