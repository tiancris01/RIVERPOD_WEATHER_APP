import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_riverpod_app/pages/home/widgets/home_body_list.dart';

import 'widgets/home_appbar.dart';

import 'providers/weather_provider.dart';

class HomePageView extends ConsumerStatefulWidget {
  const HomePageView({super.key});

  @override
  ConsumerState<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends ConsumerState<HomePageView> {
  bool _isLoadingNewCity = false;

  Future<void> _addCity(String city) async {
    setState(() => _isLoadingNewCity = true);
    try {
      await ref.read(weatherProvider.notifier).addCity(city);
    } finally {
      setState(() => _isLoadingNewCity = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(addCity: _addCity),
      body: HomeBodyList(isLoadingNewCity: _isLoadingNewCity),
    );
  }
}
