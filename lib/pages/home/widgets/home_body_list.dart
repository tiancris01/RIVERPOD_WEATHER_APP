import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../models/custom_error/custom_error.dart';
import '../providers/weather_provider.dart';
import 'home_utils_widgets.dart';

class HomeBodyList extends ConsumerStatefulWidget {
  final bool isLoadingNewCity;

  const HomeBodyList({super.key, this.isLoadingNewCity = false});

  @override
  ConsumerState<HomeBodyList> createState() => _ShowWeatherState();
}

class _ShowWeatherState extends ConsumerState<HomeBodyList> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(weatherProvider);

    return state.when(
      data: (weather) {
        if (weather.isEmpty && !widget.isLoadingNewCity) {
          return const SelectCity();
        }

        // Add loading item if loading new city
        final itemCount = weather.length + (widget.isLoadingNewCity ? 1 : 0);

        return ListView.builder(
          itemCount: itemCount,
          itemBuilder: (context, index) {
            // Show loading tile at the end
            if (index == weather.length && widget.isLoadingNewCity) {
              return const LoadingListTile();
            }

            final weatherEntity = weather[index];
            return Dismissible(
              key: Key(
                '${weatherEntity.cityName}_${weatherEntity.country}_$index',
              ),
              direction: DismissDirection.endToStart,
              onDismissed: (direction) {
                ref.read(weatherProvider.notifier).removeCity(index);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${weatherEntity.cityName} removed')),
                );
              },
              background: Container(
                color: Colors.red,
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(right: 20),
                child: const Icon(Icons.delete, color: Colors.white),
              ),
              child: ListTile(
                title: Text(weatherEntity.cityName),
                subtitle: Text('${weatherEntity.temp}°C'),
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  backgroundImage: NetworkImage(
                    'https://openweathermap.org/img/wn/${weatherEntity.icon}@2x.png',
                  ),
                ),
                trailing: Text(weatherEntity.country),
              ),
            );
          },
        );
      },
      error: (error, stackTrace) {
        if (error is CustomError) {
          return Center(
            child: Text(
              error.errMsg,
              style: TextStyle(color: Colors.red, fontSize: 18.0),
            ),
          );
        }
        return Center(child: Text('An unexpected error occurred'));
      },
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
