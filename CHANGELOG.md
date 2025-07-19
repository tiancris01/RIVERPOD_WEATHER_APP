# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Initial project setup with Flutter and Riverpod
- Weather API integration with OpenWeatherMap
- Basic weather display functionality
- Location search capabilities
- Environment service for configuration management
- Comprehensive error handling

### Changed
- Improved code organization with providers
- Enhanced weather data fetching logic

### Fixed
- Weather fetch by city functionality improvements

### Security
- Added secure environment variable handling

## [0.1.0-beta.1] - 2025-07-19

### Added
- Initial release of Weather Riverpod App
- Core weather functionality using OpenWeatherMap API
- Riverpod state management implementation
- Direct geocoding for location search
- Current weather display
- Environment service with flutter_dotenv integration
- Dio HTTP client with proper error handling
- Material Design 3 UI theme
- Home page with weather display
- Search functionality for cities
- Temperature settings page
- Comprehensive error handling and exceptions
- Git branching and commit conventions documentation

### Technical Details
- Flutter framework setup
- Riverpod providers for state management
- Custom weather services and repositories
- Environment-based configuration
- Modular code architecture
- Generated code with build_runner
- Custom error handling system

### Dependencies
- flutter_riverpod: ^2.6.1
- riverpod_annotation: ^2.6.1
- dio: ^5.8.0+1
- flutter_dotenv: ^5.2.1
- go_router: ^16.0.0
- freezed: ^3.1.0
- json_annotation: ^4.9.0
- recase: ^4.1.0
- equatable: ^2.0.7

[Unreleased]: https://github.com/tiancris01/RIVERPOD_WEATHER_APP/compare/v0.1.0-beta.1...HEAD
[0.1.0-beta.1]: https://github.com/tiancris01/RIVERPOD_WEATHER_APP/releases/tag/v0.1.0-beta.1
