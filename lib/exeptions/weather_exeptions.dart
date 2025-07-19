class WeatherExeptions implements Exception {
  String message;
  WeatherExeptions([this.message = 'Something went wrong']) {
    message = 'Weather Exception: $message';
  }

  @override
  String toString() {
    return message;
  }
}
