import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:weather_riverpod_app/pages/home/providers/weather_provider.dart';
import 'package:weather_riverpod_app/pages/search/search_view.dart';

typedef CityCallback = Future<void> Function(String city);

class HomeAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key, required CityCallback addCity})
    : _addCity = addCity;

  final CityCallback _addCity;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      title: Text('Weather Cities'),
      actions: [
        IconButton(
          icon: Icon(Icons.delete),
          onPressed: () => ref.read(weatherProvider.notifier).clearAll(),
        ),
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () async {
            final String? city = await Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => SearchView(),
              ),
            );
            if (city != null && city.isNotEmpty) {
              _addCity(city);
            }
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
