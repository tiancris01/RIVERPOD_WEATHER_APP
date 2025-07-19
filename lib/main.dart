import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_riverpod_app/pages/home/home_page_view.dart';
import 'package:weather_riverpod_app/services/environment_service.dart';
import 'package:weather_riverpod_app/widgets/main_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize environment service
  await EnvironmentService.initialize(envFilePath: 'env/.env.dev');

  runApp(const ProviderScope(child: MainApp()));
}
