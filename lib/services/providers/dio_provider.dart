import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../environment_service.dart';

part 'dio_provider.g.dart';

@riverpod
EnvironmentService environmentService(Ref ref) {
  return EnvironmentService.instance;
}

@riverpod
Dio dio(Ref ref) {
  final envService = ref.watch(environmentServiceProvider);
  final baseUrl = envService.apiHost; // Use the apiHost from EnvironmentService
  final options = BaseOptions(baseUrl: 'https://$baseUrl');
  return Dio(options);
}
