import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'services/environment_service.dart';
import 'widgets/main_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize environment service
  await EnvironmentService.initialize(envFilePath: 'env/.env.dev');

  runApp(const ProviderScope(child: MainApp()));
}
